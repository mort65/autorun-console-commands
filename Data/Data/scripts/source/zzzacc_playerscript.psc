Scriptname zzzacc_PlayerScript extends ReferenceAlias

Quest Property accMCMscript Auto
zzzacc_MCMScript Property MCMScript Auto
ImageSpaceModifier Property BlackScreen  Auto
Actor Property PlayerRef Auto
GlobalVariable Property FirstRun Auto 
Bool Property bInterior Auto Hidden
Int Property iConsoleUtilVer Auto Hidden
Bool Property bConsoleUtil Auto Hidden
Bool bBScreen = False
Bool bTMenu = False

Event OnPlayerLoadGame()
	CheckSKSE()
	CheckConsoleUtil()
	If (FirstRun.GetValue() == 1)
		FirstRun()
	EndIf
	If MCMScript.bOnKeyPress
		RegisterForKey(MCMScript.RunCommandKeyA)
		RegisterForKey(MCMScript.RunCommandKeyB)
		RegisterForKey(MCMScript.RunCommandKeyC)
		RegisterForKey(MCMScript.RunCommandKeyD)
		RegisterForKey(MCMScript.RunCommandKeyE)
	EndIf
	If MCMScript.bOnLoadGame
		String sCurState
        If GetState() == "Load1"
            GoToState("Load2")
			sCurState = "Load2"
        Else
            GoToState("Load1")
			sCurState = "Load1"
        EndIf
		Utility.Wait(0.1)
		If GetState() == sCurState
			If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently0)
				ConsoleUtil.ExecuteCommand("bat ACG")
			Else
				bBScreen = bGetBScreen( MCMScript.bBlackScreen0 ) 
				bTMenu = bGetTMenu( MCMScript.bToggleMenu0 )
				If ( bBScreen || bTMenu )
					If bBScreen
						BlackScreen.Apply()
					EndIf
					If bTMenu
						Debug.ToggleMenus()
					EndIf
					Utility.Wait(0.1)
				EndIf
				RunBat(34) ;G
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
		EndIf
	EndIf
EndEvent

Event OnInit()
	CheckSKSE()
	If !accMCMscript.IsRunning()
		accMCMscript.Start()
		CheckConsoleUtil()
		If ( FirstRun.GetValue() == 1 )
			If bConsoleUtil
				MCMScript.bRunSilently = True
			EndIf
			FirstRun()
		EndIf
	EndIf
EndEvent

Event OnSleepStop(Bool abInterrupted)
	If MCMScript.bOnSleepStart
		String sCurState
		If GetState() == "Sleep1"
			GoToState("Sleep2")
			sCurState = "Sleep2"
		Else
			GoToState("Sleep1")
			sCurState = "Sleep1"
		EndIf
		Utility.Wait(0.1)
		If GetState() == sCurState
			If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently1)
				ConsoleUtil.ExecuteCommand("bat ACH")
			Else
				bBScreen = bGetBScreen( MCMScript.bBlackScreen1 ) 
				bTMenu = bGetTMenu( MCMScript.bToggleMenu1 )
				If ( bBScreen || bTMenu )
					If bBScreen
						BlackScreen.Apply()
					EndIf
					If bTMenu
						Debug.ToggleMenus()
					EndIf
					Utility.Wait(0.1)
				EndIf
				RunBat(35) ;H
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
		EndIf
	EndIf
EndEvent

Event OnEnterBleedout()
	If MCMScript.bOnBleedout
		String sCurState
		If GetState() == "Bleedout1"
			GoToState("Bleedout2")
			sCurState = "Bleedout2"
		Else
			GoToState("Bleedout1")
			sCurState = "Bleedout1"
		EndIf
		Utility.Wait(0.1)
		If GetState() == sCurState
			If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently4)
				ConsoleUtil.ExecuteCommand("bat ACK")
			Else
				bBScreen = bGetBScreen( MCMScript.bBlackScreen4 ) 
				bTMenu = bGetTMenu( MCMScript.bToggleMenu4 )
				If ( bBScreen || bTMenu )
					If bBScreen
						BlackScreen.Apply()
					EndIf
					If bTMenu
						Debug.ToggleMenus()
					EndIf
					Utility.Wait(0.1)
				EndIf
				RunBat(37) ;K
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
		EndIf
	EndIf
EndEvent

Event OnDying( Actor akKiller )
	If MCMScript.bOnDying
		String sCurState
		If GetState() == "Dying1"
			GoToState("Dying2")
			sCurState = "Dying2"
		Else
			GoToState("Dying1")
			sCurState = "Dying1"
		EndIf
		Utility.Wait(0.1)
		If GetState() == sCurState
			If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently15)
				ConsoleUtil.ExecuteCommand("bat ACF")
			Else
				bBScreen = bGetBScreen( MCMScript.bBlackScreen15 ) 
				bTMenu = bGetTMenu( MCMScript.bToggleMenu15 )
				If ( bBScreen || bTMenu )
					If bBScreen
						BlackScreen.Apply()
					EndIf
					If bTMenu
						Debug.ToggleMenus()
					EndIf
					Utility.Wait(0.1)
				EndIf
				RunBat(33) ;F
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
		EndIf
	EndIf
EndEvent

Event OnGetUp(ObjectReference akFurniture)
	If MCMScript.bOnStanding
		String sCurState
		If GetState() == "Getup1"
			GoToState("Getup2")
			sCurState = "Getup2"
		Else
			GoToState("Getup1")
			sCurState = "Getup1"
		EndIf
		Utility.Wait(0.1)
		If GetState() == sCurState
			If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently11)
				ConsoleUtil.ExecuteCommand("bat ACB")
			Else
				bBScreen = bGetBScreen( MCMScript.bBlackScreen11 ) 
				bTMenu = bGetTMenu( MCMScript.bToggleMenu11 )
				If ( bBScreen || bTMenu )
					If bBScreen
						BlackScreen.Apply()
					EndIf
					If bTMenu
						Debug.ToggleMenus()
					EndIf
					Utility.Wait(0.1)
				EndIf
				RunBat(48) ;B
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
		EndIf
	EndIf
EndEvent

Function mapKey()
	UnregisterForAllKeys()
	If MCMScript.bOnKeyPress
		RegisterForKey(MCMScript.RunCommandKeyA)
		RegisterForKey(MCMScript.RunCommandKeyB)
		RegisterForKey(MCMScript.RunCommandKeyC)
		RegisterForKey(MCMScript.RunCommandKeyD)
		RegisterForKey(MCMScript.RunCommandKeyE)
	EndIf
EndFunction

Event OnKeyDown(int keyCode)
	If MCMScript.bOnKeyPress
		If !Utility.IsInMenuMode()
			If keyCode == MCMScript.RunCommandKeyA
				String sCurState
				If GetState() == "KeyA1"
					GoToState("KeyA2")
					sCurState = "KeyA2"
				Else
					GoToState("KeyA1")
					sCurState = "KeyA1"
				EndIf
				Utility.Wait(0.1)
				If GetState() == sCurState
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently6)
						ConsoleUtil.ExecuteCommand("bat ACM")
					Else
						bBScreen = bGetBScreen( MCMScript.bBlackScreen6 ) 
						bTMenu = bGetTMenu( MCMScript.bToggleMenu6 )
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						RunBat(50) ;M
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
				EndIf
			ElseIf keyCode == MCMScript.RunCommandKeyB
				String sCurState
				If GetState() == "KeyB1"
					GoToState("KeyB2")
					sCurState = "KeyB2"
				Else
					GoToState("KeyB1")
					sCurState = "KeyB1"
				EndIf
				Utility.Wait(0.1)
				If GetState() == sCurState
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently6)
						ConsoleUtil.ExecuteCommand("bat ACN")
					Else
						bBScreen = bGetBScreen( MCMScript.bBlackScreen6 ) 
						bTMenu = bGetTMenu( MCMScript.bToggleMenu6 )
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						RunBat(49) ;N
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
				EndIf
			ElseIf keyCode == MCMScript.RunCommandKeyC
				String sCurState
				If GetState() == "KeyC1"
					GoToState("KeyC2")
					sCurState = "KeyC2"
				Else
					GoToState("KeyC1")
					sCurState = "KeyC1"
				EndIf
				Utility.Wait(0.1)
				If GetState() == sCurState
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently6)
						ConsoleUtil.ExecuteCommand("bat ACO")
					Else
						bBScreen = bGetBScreen( MCMScript.bBlackScreen6 ) 
						bTMenu = bGetTMenu( MCMScript.bToggleMenu6 )
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						RunBat(24) ;O
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
				EndIf
			ElseIf keyCode == MCMScript.RunCommandKeyD
				String sCurState
				If GetState() == "KeyD1"
					GoToState("KeyD2")
					sCurState = "KeyD2"
				Else
					GoToState("KeyD1")
					sCurState = "KeyD1"
				EndIf
				Utility.Wait(0.1)
				If GetState() == sCurState
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently6)
						ConsoleUtil.ExecuteCommand("bat ACP")
					Else
						bBScreen = bGetBScreen( MCMScript.bBlackScreen6 ) 
						bTMenu = bGetTMenu( MCMScript.bToggleMenu6 )
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						RunBat(25) ;P
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
				EndIf
			ElseIf keyCode == MCMScript.RunCommandKeyE
				String sCurState
				If GetState() == "KeyE1"
					GoToState("KeyE2")
					sCurState = "KeyE2"
				Else
					GoToState("KeyE1")
					sCurState = "KeyE1"
				EndIf
				Utility.Wait(0.1)
				If GetState() == sCurState
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently6)
						ConsoleUtil.ExecuteCommand("bat ACA")
					Else
						bBScreen = bGetBScreen( MCMScript.bBlackScreen6 ) 
						bTMenu = bGetTMenu( MCMScript.bToggleMenu6 )
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						RunBat(30) ;A
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
				EndIf
			EndIf
		EndIf
	EndIf
EndEvent

Event OnRaceSwitchComplete()
	If MCMScript.bOnRaceSwitch
		String sCurState
		If GetState() == "RaceChange1"
			GoToState("RaceChange2")
			sCurState = "RaceChange2"
		Else
			GoToState("RaceChange1")
			sCurState = "RaceChange1"
		EndIf
		Utility.Wait(0.1)
		If GetState() == sCurState
			If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently14)
				ConsoleUtil.ExecuteCommand("bat ACE")
			Else
				bBScreen = bGetBScreen( MCMScript.bBlackScreen14 ) 
				bTMenu = bGetTMenu( MCMScript.bToggleMenu14 )
				If ( bBScreen || bTMenu )
					If bBScreen
						BlackScreen.Apply()
					EndIf
					If bTMenu
						Debug.ToggleMenus()
					EndIf
					Utility.Wait(0.1)
				EndIf
				RunBat(18) ;E
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
		EndIf
	EndIf
EndEvent

Function FirstRun()
	String sCurState
	If GetState() == "FirstRun1"
		GoToState("FirstRun2")
		sCurState = "FirstRun2"
	Else
		GoToState("FirstRun1")
		sCurState = "FirstRun1"
	EndIf
	Utility.Wait(0.1)
	If GetState() == sCurState
		If bConsoleUtil
			ConsoleUtil.ExecuteCommand("bat AC")
		Else
			RunBat() ;
		EndIf
		FirstRun.SetValue(0)
	EndIf
EndFunction

Function RunBat(Int iChar1 = 0,Int iChar2 = 0,Int iChar3 = 0)
	Input.TapKey(41) ;~
	Utility.WaitMenuMode(0.1)
	Input.TapKey(14) ;backspace
	Utility.WaitMenuMode(0.1)
	Input.TapKey(48) ;B
	Utility.WaitMenuMode(0.1)
	Input.TapKey(30) ;A
	Utility.WaitMenuMode(0.1)
	Input.TapKey(20) ;T
	Utility.WaitMenuMode(0.1)
	Input.TapKey(57) ;Space
	Utility.WaitMenuMode(0.1)
	Input.TapKey(30) ;A
	Utility.WaitMenuMode(0.1)
	Input.TapKey(46) ;C
	If iChar1 > 0
		Utility.WaitMenuMode(0.1)
		Input.TapKey(iChar1) ;
	EndIf
	If iChar2 > 0
		Utility.WaitMenuMode(0.1)
		Input.TapKey(iChar2) ;
	EndIf
	If iChar3 > 0
		Utility.WaitMenuMode(0.1)
		Input.TapKey(iChar3) ;
	EndIf
	Utility.WaitMenuMode(0.1)
	Input.TapKey(28) ;Enter
	Utility.WaitMenuMode(0.1)
	Input.TapKey(41) ;~
EndFunction

Function CheckSKSE()
	Bool SKSE_Loaded = SKSE.GetVersion()
	If !SKSE_Loaded
		Debug.Trace("ARCC: [Error] SKSE not found.")
	EndIf
EndFunction

Function CheckConsoleUtil()
	Bool ConsoleUtil_Loaded = ConsoleUtil.GetVersion()
	If ConsoleUtil_Loaded
		iConsoleUtilVer = ConsoleUtil.GetVersion()
	Else
		iConsoleUtilVer = 0
	EndIf
	If ( iConsoleUtilVer && iConsoleUtilVer > 0 )
		bConsoleUtil = True
	Else
		bConsoleUtil = False
		Debug.Trace("ARCC: ConsoleUtil not loaded.")
	EndIf
EndFunction

Bool Function bGetBScreen(Bool bScreen)
	Return (( MCMScript.bSeparateConfig && bScreen ) || ( !MCMScript.bSeparateConfig && MCMScript.bBlackScreen ))
EndFunction

Bool Function bGetTMenu(Bool bMenu)
	Return (( MCMScript.bSeparateConfig && bMenu ) || ( !MCMScript.bSeparateConfig && MCMScript.bToggleMenu ))
EndFunction

Bool Function bGetRunSilently(Bool bSilent)
	Return (( MCMScript.bSeparateConfig && bSilent ) || ( !MCMScript.bSeparateConfig && MCMScript.bRunSilently ))
EndFunction
