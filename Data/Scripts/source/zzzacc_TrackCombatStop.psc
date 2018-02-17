Scriptname zzzacc_TrackCombatStop extends activemagiceffect  

Actor Property PlayerRef Auto
ImageSpaceModifier Property BlackScreen  Auto
zzzacc_MCMScript Property MCMScript Auto
zzzacc_PlayerScript Property PlayerScript Auto
Bool bBScreen = False
Bool bTMenu = False

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If ( MCMScript.bOnCombatStart )
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
			If GetState() == sCurState
				If PlayerScript.bConsoleUtil
					ConsoleUtil.ExecuteCommand("bat acd")
				Else
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
					PlayerScript.RunBat(32) ;d
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
			EndIf
		EndIf
	EndIf
EndEvent
