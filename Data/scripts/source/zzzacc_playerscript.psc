Scriptname zzzacc_PlayerScript extends ReferenceAlias

Quest Property accMCMscript Auto
zzzacc_MCMScript Property MCMScript Auto
ImageSpaceModifier Property BlackScreen  Auto
Actor Property PlayerRef Auto
GlobalVariable Property FirstRun Auto 
GlobalVariable Property accVersion Auto
Bool Property bInterior Auto Hidden
Int Property iConsoleUtilVer Auto Hidden
Float Property fCurVersion = 0.0 Auto Hidden
Float Property fNewVersion = 0.0 Auto Hidden
Bool Property bConsoleUtil Auto Hidden
Bool bBScreen = False
Bool bTMenu = False

Event OnPlayerLoadGame()
	CheckSKSE()
	CheckConsoleUtil()
	If (FirstRun.GetValue() == 1)
		FirstRun()
	EndIf
	CheckModVersion()
	If !accMCMscript.IsRunning()
		accMCMscript.Start()
	EndIf
	If MCMScript.bOnKeyPress
		RegisterForKey(MCMScript.RunCommandKeyA)
		RegisterForKey(MCMScript.RunCommandKeyB)
		RegisterForKey(MCMScript.RunCommandKeyC)
		RegisterForKey(MCMScript.RunCommandKeyD)
		RegisterForKey(MCMScript.RunCommandKeyE)
		RegisterForKey(MCMScript.RunCommandKeyF)
		RegisterForKey(MCMScript.RunCommandKeyG)
		RegisterForKey(MCMScript.RunCommandKeyH)
		RegisterForKey(MCMScript.RunCommandKeyI)
		RegisterForKey(MCMScript.RunCommandKeyJ)
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
	CheckConsoleUtil()
	If ( FirstRun.GetValue() == 1 )
		If bConsoleUtil
			MCMScript.bRunSilently = True
		EndIf
		FirstRun()
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
		RegisterForKey(MCMScript.RunCommandKeyF)
		RegisterForKey(MCMScript.RunCommandKeyG)
		RegisterForKey(MCMScript.RunCommandKeyH)
		RegisterForKey(MCMScript.RunCommandKeyI)
		RegisterForKey(MCMScript.RunCommandKeyJ)
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
			ElseIf keyCode == MCMScript.RunCommandKeyF
				String sCurState
				If GetState() == "KeyF1"
					GoToState("KeyF2")
					sCurState = "KeyF2"
				Else
					GoToState("KeyF1")
					sCurState = "KeyF1"
				EndIf
				Utility.Wait(0.1)
				If GetState() == sCurState
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently6)
						ConsoleUtil.ExecuteCommand("bat ACQ")
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
						RunBat(16) ;Q
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
			ElseIf keyCode == MCMScript.RunCommandKeyG
				String sCurState
				If GetState() == "KeyG1"
					GoToState("KeyG2")
					sCurState = "KeyG2"
				Else
					GoToState("KeyG1")
					sCurState = "KeyG1"
				EndIf
				Utility.Wait(0.1)
				If GetState() == sCurState
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently6)
						ConsoleUtil.ExecuteCommand("bat ACR")
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
						RunBat(19) ;R
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
			ElseIf keyCode == MCMScript.RunCommandKeyH
				String sCurState
				If GetState() == "KeyH1"
					GoToState("KeyH2")
					sCurState = "KeyH2"
				Else
					GoToState("KeyH1")
					sCurState = "KeyH1"
				EndIf
				Utility.Wait(0.1)
				If GetState() == sCurState
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently6)
						ConsoleUtil.ExecuteCommand("bat ACS")
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
						RunBat(31) ;S
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
			ElseIf keyCode == MCMScript.RunCommandKeyI
				String sCurState
				If GetState() == "KeyI1"
					GoToState("KeyI2")
					sCurState = "KeyI2"
				Else
					GoToState("KeyI1")
					sCurState = "KeyI1"
				EndIf
				Utility.Wait(0.1)
				If GetState() == sCurState
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently6)
						ConsoleUtil.ExecuteCommand("bat ACT")
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
						RunBat(20) ;T
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
			ElseIf keyCode == MCMScript.RunCommandKeyJ
				String sCurState
				If GetState() == "KeyJ1"
					GoToState("KeyJ2")
					sCurState = "KeyJ2"
				Else
					GoToState("KeyJ1")
					sCurState = "KeyJ1"
				EndIf
				Utility.Wait(0.1)
				If GetState() == sCurState
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently6)
						ConsoleUtil.ExecuteCommand("bat ACU")
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
						RunBat(22) ;U
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
	Input.TapKey(MCMScript.iDXCode[40]) ;~
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 10)
	Input.TapKey(MCMScript.iDXCode[13]) ;backspace
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 20)
	Input.TapKey(MCMScript.iDXCode[47]) ;B
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 20)
	Input.TapKey(MCMScript.iDXCode[29]) ;A
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 20)
	Input.TapKey(MCMScript.iDXCode[19]) ;T
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 20)
	Input.TapKey(MCMScript.iDXCode[56]) ;Space
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 20)
	Input.TapKey(MCMScript.iDXCode[29]) ;A
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 20)
	Input.TapKey(MCMScript.iDXCode[45]) ;C
	If iChar1 > 0
		Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 20)
		Input.TapKey(MCMScript.iDXCode[iChar1- 1]) ;
	EndIf
	If iChar2 > 0
		Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 20)
		Input.TapKey(MCMScript.iDXCode[iChar2 - 1]) ;
	EndIf
	If iChar3 > 0
		Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 20)
		Input.TapKey(MCMScript.iDXCode[iChar3 - 1]) ;
	EndIf
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 20)
	Input.TapKey(MCMScript.iDXCode[27]) ;Enter
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 20)
	Input.TapKey(MCMScript.iDXCode[40]) ;~
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

Function CheckModVersion()
	fNewVersion = MCMScript.GetModVersion()
	fCurVersion = fMin(fCurVersion, accVersion.GetValue())
	If ( fCurVersion < fNewVersion )
		Debug.Trace("ARCC: Updating to version " + fNewVersion)
		MCMScript.Update(fCurVersion, fNewVersion)
		fCurVersion = fNewVersion
		accVersion.SetValue(fNewVersion)
		Debug.Trace("ARCC: Update Completed.")
	EndIf
EndFunction

Float Function fMin(Float a,Float b)
	If a <= b
		Return a
	EndIf
	Return b
EndFunction
