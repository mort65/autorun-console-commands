Scriptname zzzacc_TrackCell extends activemagiceffect

Actor Property PlayerRef Auto
Objectreference Property InvisibleObject Auto
ImageSpaceModifier Property BlackScreen  Auto
zzzacc_MCMScript Property MCMScript Auto
zzzacc_PlayerScript Property PlayerScript Auto
Bool bBScreen = False
Bool bTMenu = False

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If ( MCMScript.bOnCellInter && PlayerRef.IsInInterior() && !InvisibleObject.IsInInterior() )
		String sCurState
		If GetState() == "Inter1"
			GoToState("Inter2")
			sCurState = "Inter2"
		Else
			GoToState("Inter1")
			sCurState = "Inter1"
		EndIf
		Utility.Wait(0.1)
		If GetState() == sCurState
			If PlayerScript.bConsoleUtil
				ConsoleUtil.ExecuteCommand("bat acj")
			Else
				bBScreen = PlayerScript.bGetBScreen( MCMScript.bBlackScreen3 ) 
				bTMenu = PlayerScript.bGetTMenu( MCMScript.bToggleMenu3 )
				If ( bTMenu || bBScreen )
					If bBScreen
						BlackScreen.Apply()
					EndIf
					If bTMenu
						Debug.ToggleMenus()
					EndIf
					Utility.Wait(0.1)
				EndIf
				PlayerScript.RunBat(36) ;J
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
	ElseIf ( MCMScript.bOnCellExter && !PlayerRef.IsInInterior() && InvisibleObject.IsInInterior() )
		String sCurState
		If GetState() == "Exter1"
			GoToState("Exter2")
			sCurState = "Exter2"
		Else
			GoToState("Exter1")
			sCurState = "Exter1"
		EndIf
		Utility.Wait(0.1)
		If GetState() == sCurState
			If PlayerScript.bConsoleUtil
				ConsoleUtil.ExecuteCommand("bat aci")
			Else
				bBScreen = PlayerScript.bGetBScreen( MCMScript.bBlackScreen2 ) 
				bTMenu = PlayerScript.bGetTMenu( MCMScript.bToggleMenu2 )
				If ( bTMenu || bBScreen )
					If bBScreen
						BlackScreen.Apply()
					EndIf
					If bTMenu
						Debug.ToggleMenus()
					EndIf
					Utility.Wait(0.1)
				EndIf
				PlayerScript.RunBat(23) ;i
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
	InvisibleObject.MoveTo(PlayerRef)
EndEvent
