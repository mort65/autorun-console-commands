Scriptname zzzacc_TrackCombatStop extends activemagiceffect  

Actor Property PlayerRef Auto
ImageSpaceModifier Property BlackScreen  Auto
zzzacc_MCMScript Property MCMScript Auto
zzzacc_PlayerScript Property PlayerScript Auto
zzzacc_UtilScript Property UtilScript Auto
Bool bBScreen = False
Bool bTMenu = False

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If ( MCMScript.bOnCombatStop )
		If ( !PlayerRef.IsInCombat() && !PlayerRef.IsDead() && !PlayerRef.IsBleedingout() )
			String sCurState
			If GetState() == "CombatStop1"
				GoToState("CombatStop2")
				sCurState = "CombatStop2"
			Else
				GoToState("CombatStop1")
				sCurState = "CombatStop1"
			EndIf
			Utility.Wait(0.1)
			If ( GetState() == sCurState ) && ( PlayerScript.GetState() != "Busy" )
				GoToState("Busy")
				PlayerScript.GoToState("Busy")
				If PlayerScript.bConsoleUtil && PlayerScript.bGetRunSilently(MCMScript.bRunSilently13)
					ConsoleUtil.ExecuteCommand(MCMScript.sInputCombatStop)
				ElseIf !UtilScript.bIsArrEmpty(MCMScript.iCombatStopCodes,1)
					bBScreen = PlayerScript.bGetBScreen( MCMScript.bBlackScreen13 ) 
					bTMenu = PlayerScript.bGetTMenu( MCMScript.bToggleMenu13 )
					If ( bTMenu || bBScreen )
						If bBScreen
							BlackScreen.Apply()
						EndIf
						If bTMenu
							Debug.ToggleMenus()
						EndIf
						Utility.Wait(0.1)
					EndIf
					UtilScript.RunCommand(MCMScript.iCombatStopCodes)
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

