Scriptname zzzacc_TrackSitting extends activemagiceffect

Actor Property PlayerRef Auto
ImageSpaceModifier Property BlackScreen  Auto
zzzacc_MCMScript Property MCMScript Auto
zzzacc_PlayerScript Property PlayerScript Auto
zzzacc_UtilScript Property UtilScript Auto
Bool bTMenu = False
Bool bBScreen = False

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If ( MCMScript.bOnSit )
		String sCurState
		If GetState() == "Sit1"
			GoToState("Sit2")
			sCurState = "Sit2"
		Else
			GoToState("Sit1")
			sCurState = "Sit1"
		EndIf
		Utility.Wait(0.1)
		If ( GetState() == sCurState ) && ( PlayerScript.GetState() != "Busy" )
			GoToState("Busy")
			PlayerScript.GoToState("Busy")
			If PlayerScript.bConsoleUtil && PlayerScript.bGetRunSilently(MCMScript.bRunSilently5)
				ConsoleUtil.ExecuteCommand(MCMScript.sInputSit)
			ElseIf !UtilScript.bIsArrEmpty(MCMScript.iSitCodes,1)
				bBScreen = PlayerScript.bGetBScreen( MCMScript.bBlackScreen5 ) 
				bTMenu = PlayerScript.bGetTMenu( MCMScript.bToggleMenu5 )
				If ( bBScreen || bTMenu )
					If bBScreen
						BlackScreen.Apply()
					EndIf
					If bTMenu
						Debug.ToggleMenus()
					EndIf
					Utility.Wait(0.1)
				EndIf
				UtilScript.RunCommand(MCMScript.iSitCodes)
				If ( bBScreen || bTMenu )
					Utility.Wait(0.1)
					If bTMenu
						Debug.ToggleMenus()
					EndIf
					If bBScreen
						BlackScreen.Remove()
					EndIf
				EndIf
			EndIf
			GoToState("")
			PlayerScript.GoToState("")
		EndIf
	EndIf
EndEvent

State Busy
	Event OnEffectStart(Actor akTarget, Actor akCaster)
	EndEvent
EndState

