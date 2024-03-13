Scriptname zzzacc_PlayerScript extends ReferenceAlias

Quest Property accMCMscript Auto
Quest Property accUtilScript Auto
zzzacc_MCMScript Property MCMScript Auto
zzzacc_UtilScript Property UtilScript Auto
ImageSpaceModifier Property BlackScreen  Auto
Actor Property PlayerRef Auto
GlobalVariable Property FirstRun Auto 
GlobalVariable Property accVersion Auto
Bool Property bInterior Auto Hidden
Int Property iConsoleUtilVer Auto Hidden
Float Property fCurVersion = 0.0 Auto Hidden
Float Property fNewVersion = 0.0 Auto Hidden
Bool Property bConsoleUtil Auto Hidden
Int[] Property iKeyCodes Auto Hidden
Bool bBScreen = False
Bool bTMenu = False

Event OnPlayerLoadGame()
	GoToState("Busy")
	If !accUtilScript.IsRunning()
		accUtilScript.Start()
	EndIf
	CheckSKSE()
	CheckConsoleUtil()
	CheckModVersion()
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
			GoToState("Busy")
			If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently0)
				ConsoleUtil.ExecuteCommand(MCMScript.sInputLoadGame)
			ElseIf !UtilScript.bIsArrEmpty(MCMScript.iLoadGameCodes,1)
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
				UtilScript.RunCommand(MCMScript.iLoadGameCodes)
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
	GoToState("")
	RegisterForModEvent("ARCC_RunCommand", "RunModCommand")
EndEvent

Event OnInit()
	CheckSKSE()
	CheckConsoleUtil()
	RegisterForModEvent("ARCC_RunCommand", "RunModCommand")
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
			GoToState("Busy")
			If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently1)
				ConsoleUtil.ExecuteCommand(MCMScript.sInputSleepStart)
			ElseIf !UtilScript.bIsArrEmpty(MCMScript.iSleepStartCodes,1)
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
				UtilScript.RunCommand(MCMScript.iSleepStartCodes)
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
		GoToState("")
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
			GoToState("Busy")
			If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently4)
				ConsoleUtil.ExecuteCommand(MCMScript.sInputBleedout)
			ElseIf !UtilScript.bIsArrEmpty(MCMScript.iBleedouCodes,1)
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
				UtilScript.RunCommand(MCMScript.iBleedouCodes)
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
			GoToState("Busy")
			If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently15)
				ConsoleUtil.ExecuteCommand(MCMScript.sInputDying)
			ElseIf !UtilScript.bIsArrEmpty(MCMScript.iDyingCodes,1)
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
				UtilScript.RunCommand(MCMScript.iDyingCodes)
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
			GoToState("Busy")
			If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently11)
				ConsoleUtil.ExecuteCommand(MCMScript.sInputStanding)
			ElseIf !UtilScript.bIsArrEmpty(MCMScript.iStandingCodes,1)
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
				UtilScript.RunCommand(MCMScript.iStandingCodes)
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
			If ( keyCode == MCMScript.RunCommandKeyA ) && MCMScript.sInputKeyA
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
					GoToState("Busy")
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently6)
						ConsoleUtil.ExecuteCommand(MCMScript.sInputKeyA)
					ElseIf !UtilScript.bIsArrEmpty(MCMScript.iKeyACodes,1)
						bBScreen = bGetBScreen(MCMScript.bBlackScreen6) 
						bTMenu = bGetTMenu(MCMScript.bToggleMenu6)
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						UtilScript.RunCommand(MCMScript.iKeyACodes)
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
					GoToState("Busy")
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently7)
						ConsoleUtil.ExecuteCommand(MCMScript.sInputKeyB)
					ElseIf !UtilScript.bIsArrEmpty(MCMScript.iKeyBCodes,1)
						bBScreen = bGetBScreen(MCMScript.bBlackScreen7) 
						bTMenu = bGetTMenu(MCMScript.bToggleMenu7)
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						UtilScript.RunCommand(MCMScript.iKeyBCodes)
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
					GoToState("Busy")
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently8)
						ConsoleUtil.ExecuteCommand(MCMScript.sInputKeyC)
					ElseIf !UtilScript.bIsArrEmpty(MCMScript.iKeyCCodes,1)
						bBScreen = bGetBScreen(MCMScript.bBlackScreen8) 
						bTMenu = bGetTMenu(MCMScript.bToggleMenu8)
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						UtilScript.RunCommand(MCMScript.iKeyCCodes)
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
					GoToState("Busy")
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently9)
						ConsoleUtil.ExecuteCommand(MCMScript.sInputKeyD)
					ElseIf !UtilScript.bIsArrEmpty(MCMScript.iKeyDCodes,1)
						bBScreen = bGetBScreen(MCMScript.bBlackScreen9) 
						bTMenu = bGetTMenu(MCMScript.bToggleMenu9)
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						UtilScript.RunCommand(MCMScript.iKeyDCodes)
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
					GoToState("Busy")
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently10)
						ConsoleUtil.ExecuteCommand(MCMScript.sInputKeyE)
					ElseIf !UtilScript.bIsArrEmpty(MCMScript.iKeyECodes,1)
						bBScreen = bGetBScreen(MCMScript.bBlackScreen10) 
						bTMenu = bGetTMenu(MCMScript.bToggleMenu10)
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						UtilScript.RunCommand(MCMScript.iKeyECodes)
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
					GoToState("Busy")
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently16)
						ConsoleUtil.ExecuteCommand(MCMScript.sInputKeyF)
					ElseIf !UtilScript.bIsArrEmpty(MCMScript.iKeyFCodes,1)
						bBScreen = bGetBScreen(MCMScript.bBlackScreen16) 
						bTMenu = bGetTMenu(MCMScript.bToggleMenu16)
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						UtilScript.RunCommand(MCMScript.iKeyFCodes)
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
					GoToState("Busy")
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently17)
						ConsoleUtil.ExecuteCommand(MCMScript.sInputKeyG)
					ElseIf !UtilScript.bIsArrEmpty(MCMScript.iKeyGCodes,1)
						bBScreen = bGetBScreen(MCMScript.bBlackScreen17) 
						bTMenu = bGetTMenu(MCMScript.bToggleMenu17)
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						UtilScript.RunCommand(MCMScript.iKeyGCodes)
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
					GoToState("Busy")
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently18)
						ConsoleUtil.ExecuteCommand(MCMScript.sInputKeyH)
					ElseIf !UtilScript.bIsArrEmpty(MCMScript.iKeyHCodes,1)
						bBScreen = bGetBScreen(MCMScript.bBlackScreen18) 
						bTMenu = bGetTMenu(MCMScript.bToggleMenu18)
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						UtilScript.RunCommand(MCMScript.iKeyHCodes)
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
					GoToState("Busy")
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently19)
						ConsoleUtil.ExecuteCommand(MCMScript.sInputKeyI)
					ElseIf !UtilScript.bIsArrEmpty(MCMScript.iKeyICodes,1)
						bBScreen = bGetBScreen(MCMScript.bBlackScreen19) 
						bTMenu = bGetTMenu(MCMScript.bToggleMenu19)
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						UtilScript.RunCommand(MCMScript.iKeyICodes)
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
					GoToState("Busy")
					If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently20)
						ConsoleUtil.ExecuteCommand(MCMScript.sInputKeyJ)
					ElseIf !UtilScript.bIsArrEmpty(MCMScript.iKeyJCodes,1)
						bBScreen = bGetBScreen(MCMScript.bBlackScreen20) 
						bTMenu = bGetTMenu(MCMScript.bToggleMenu20)
						If ( bBScreen || bTMenu )
							If bBScreen
								BlackScreen.Apply()
							EndIf
							If bTMenu
								Debug.ToggleMenus()
							EndIf
							Utility.Wait(0.1)
						EndIf
						UtilScript.RunCommand(MCMScript.iKeyJCodes)
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
			GoToState("Busy")
			If bConsoleUtil && bGetRunSilently(MCMScript.bRunSilently14)
				ConsoleUtil.ExecuteCommand(MCMScript.sInputRaceSwitch)
			ElseIf !UtilScript.bIsArrEmpty(MCMScript.iRaceSwitchCodes,1)
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
				UtilScript.RunCommand(MCMScript.iRaceSwitchCodes)
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
		GoToState("Busy")
		MCMScript.iKeyLayout = MCMScript.accKeyLayout.GetValue() As Int
		If MCMScript.iKeyLayout < 0 || ( MCMScript.iKeyLayout > MCMScript.sKeyLayouts.Length - 1 )
			MCMScript.iKeyLayout = 0
			MCMScript.accKeyLayout.SetValue(0)
		EndIf
		If MCMScript.iKeyLayout > 0
			UtilScript.SetKeyCodes(MCMScript.iKeyLayout)
		EndIf
		If bConsoleUtil
			ConsoleUtil.ExecuteCommand("bat AC")
		Else
			UtilScript.RunCommand(UtilScript.getKeyCodes("bat AC"))
		EndIf
		FirstRun.SetValue(0)
		GoToState("")
	EndIf
EndFunction

Function CheckSKSE()
	Bool SKSE_Loaded = SKSE.GetVersion()
	If !SKSE_Loaded
		Debug.Notification("ARCC - SKSE Not Installed!")
		Debug.Trace("ARCC: [Error] SKSE not found.")
	EndIf
EndFunction

Function CheckConsoleUtil()
	Bool ConsoleUtil_Loaded
	If ConsoleUtil.GetVersion()
		ConsoleUtil_Loaded = ConsoleUtil.GetVersion()
		iConsoleUtilVer = ConsoleUtil.GetVersion()
	Else
		ConsoleUtil_Loaded = False
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
	fNewVersion = UtilScript.GetNewVersion()
	fCurVersion = accVersion.GetValue()
	If ( fCurVersion < fNewVersion )
		Debug.Trace("ARCC: Updating to version " + fNewVersion)
		MCMScript.Update(fCurVersion, fNewVersion)
		fCurVersion = fNewVersion
		accVersion.SetValue(fNewVersion)
		If ( FirstRun.GetValue() == 1 )
			If bConsoleUtil
				MCMScript.bRunSilently = True
			EndIf
			RegisterforSingleUpdate(1.0)
		EndIf
		Debug.Trace("ARCC: Update Completed.")
	EndIf
EndFunction

Event OnUpdate()
	If ( FirstRun.GetValue() == 1 )
		FirstRun()
	EndIf
EndEvent

Event RunModCommand(Form sender, String strModName, String strCommand, Int aiSilent = -1, Int aiFadeOut = -1, Int aiHideMenu = -1)
	If strCommand && strModName
		String sCurState
		If GetState() == "RunCommand1"
			GoToState("RunCommand2")
			sCurState = "RunCommand2"
		Else
			GoToState("RunCommand1")
			sCurState = "RunCommand1"
		EndIf
		Utility.Wait(0.1)
		If GetState() == sCurState
			GoToState("Busy")
			Bool abSilent
			If aiSilent > -1
				abSilent = aiSilent As Bool
			Else
				abSilent = MCMScript.bRunSilently
			EndIf
			If bConsoleUtil && abSilent
				Debug.Trace("ARCC: Executing '" + strCommand +"' from [ " + sender + " : " + strModName + " ]")
				ConsoleUtil.ExecuteCommand(strCommand)
			Else
				iKeyCodes = UtilScript.getKeyCodes(strCommand)
				If !UtilScript.bIsArrEmpty(iKeyCodes,1)
					Debug.Trace("ARCC: Executing '" + strCommand +"' from [ " + sender + " : " + strModName + " ]")
					If aiFadeOut > -1
						bBScreen = aiFadeOut As Bool
					Else
						bBScreen = MCMScript.bBlackScreen
					EndIf
					If aiHideMenu > -1
						bTMenu = aiHideMenu As Bool
					Else
						bTMenu = MCMScript.bToggleMenu
					EndIf
					If ( bBScreen || bTMenu )
						If bBScreen
							BlackScreen.Apply()
						EndIf
						If bTMenu
							Debug.ToggleMenus()
						EndIf
						Utility.Wait(0.1)
					EndIf
					UtilScript.RunCommand(iKeyCodes)
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
			GoToState("")
		EndIf
	EndIf
EndEvent

State Busy
	Event OnPlayerLoadGame()
		RegisterForModEvent("ARCC_RunCommand", "RunModCommand")
	EndEvent
	Event OnInit()
	EndEvent
	Event OnUpdate()
	EndEvent
	Event OnSleepStop(Bool abInterrupted)
	EndEvent
	Event OnEnterBleedout()
	EndEvent
	Event OnDying( Actor akKiller )
	EndEvent
	Event OnGetUp(ObjectReference akFurniture)
	EndEvent
	Event OnKeyDown(int keyCode)
	EndEvent
	Event OnRaceSwitchComplete()
	EndEvent
	Event RunModCommand(Form sender, String strModName, String strCommand, Int aiSilent = -1, Int aiFadeOut = -1, Int aiHideMenu = -1)
	EndEvent
	Function FirstRun()
	EndFunction
EndState
