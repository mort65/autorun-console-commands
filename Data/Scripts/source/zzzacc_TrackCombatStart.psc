Scriptname zzzacc_TrackCombatStart extends activemagiceffect

Actor Property PlayerRef Auto
ImageSpaceModifier Property BlackScreen  Auto
zzzacc_MCMScript Property MCMScript Auto
zzzacc_PlayerScript Property PlayerScript Auto
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
			If GetState() == sCurState
				If PlayerScript.bConsoleUtil
					ConsoleUtil.ExecuteCommand("bat acc")
				Else
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
					PlayerScript.RunBat(46) ;c
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
