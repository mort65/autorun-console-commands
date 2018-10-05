Scriptname zzzacc_TrackCombatStart extends activemagiceffect

Actor Property PlayerRef Auto
ImageSpaceModifier Property BlackScreen  Auto
zzzacc_MCMScript Property MCMScript Auto
zzzacc_PlayerScript Property PlayerScript Auto
zzzacc_UtilScript Property UtilScript Auto
Bool bTMenu = False
Bool bBScreen = False

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If ( MCMScript.bOnCombatStart )
		If PlayerRef.IsInCombat()
			String sCurState
			If GetState() == "CombatStart1"
				GoToState("CombatStart2")
				sCurState = "CombatStart2"
			Else
				GoToState("CombatStart1")
				sCurState = "CombatStart1"
			EndIf
			Utility.Wait(0.1)
			If ( GetState() == sCurState ) && ( PlayerScript.GetState() != "Busy" )
				GoToState("Busy")
				PlayerScript.GoToState("Busy")
				If PlayerScript.bConsoleUtil && PlayerScript.bGetRunSilently(MCMScript.bRunSilently12)
					ConsoleUtil.ExecuteCommand(MCMScript.sInputCombatStart)
				ElseIf !UtilScript.bIsArrEmpty(MCMScript.iCombatStartCodes,1)
					bBScreen = PlayerScript.bGetBScreen( MCMScript.bBlackScreen12 ) 
					bTMenu = PlayerScript.bGetTMenu( MCMScript.bToggleMenu12 )
					If ( bTMenu || bBScreen )
						If bBScreen
							BlackScreen.Apply()
						EndIf
						If bTMenu
							Debug.ToggleMenus()
						EndIf
						Utility.Wait(0.1)
					EndIf
					UtilScript.RunCommand(MCMScript.iCombatStartCodes)
					If ( bTMenu || bBScreen )
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
	EndIf
EndEvent

State Busy
	Event OnEffectStart(Actor akTarget, Actor akCaster)
	EndEvent
EndState

