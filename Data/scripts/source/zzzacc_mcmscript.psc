Scriptname zzzacc_MCMScript extends SKI_ConfigBase  

Int oidOnLoadGameEnabled
Int oidCellInterEnabled
Int oidOnCellExterEnabled
Int oidOnSleepStartEnabled
Int oidOnBleedoutEnabled
Int oidOnSitEnabled
Int oidOnRaceSwitchEnabled
Int oidOnkeyPress
Int oidOnDying
Int oidKeyMapOptionA
Int oidInputKeyA
Int oidInputKeyB
Int oidInputKeyC
Int oidInputKeyD
Int oidInputKeyE
Int oidInputKeyF
Int oidInputKeyG
Int oidInputKeyH
Int oidInputKeyI
Int oidInputKeyJ
Int oidKeyMapOptionB
Int oidKeyMapOptionC
Int oidKeyMapOptionD
Int oidKeyMapOptionE
Int oidKeyMapOptionF
Int oidKeyMapOptionG
Int oidKeyMapOptionH
Int oidKeyMapOptionI
Int oidKeyMapOptionJ
Int oidBlackScreen
Int oidToggleMenu
Int oidOnStandingEnabled
Int oidOnCombatStartEnabled
Int oidOnCombatStopEnabled
Int oidSeparateConfig
Int oidUninstall
Int oidKeyLayout
Int oidSavePreset_M
Int oidLoadPreset_M
Int oidSavePreset
Int oidLoadPreset
Int oidRunSilently
Int oidConsoleDelaySlider
Int oidInputLoadGame
Int oidInputCellInter
Int oidInputCellExter
Int oidInputCombatStart
Int oidInputCombatStop
Int oidInputSit
Int oidInputStanding
Int oidInputRaceSwitch
Int oidInputSleepStart
Int oidInputBleedout
Int oidInputDying
Bool Property bInit = False Auto Hidden
zzzacc_PlayerScript Property PlayerScript Auto
zzzacc_UtilScript Property UtilScript Auto
Objectreference Property InvisibleObject Auto
Quest Property PlayerQuest Auto
GlobalVariable Property FirstRun Auto
GlobalVariable Property accVersion Auto
GlobalVariable Property accKeyLayout Auto
String[] Property sKeyLayouts Auto Hidden
String[] Property  sPresets Auto Hidden
Int Property iKeyLayout = 0 Auto Hidden
Int Property iLoadPreset = 0 Auto Hidden
Int Property iSavePreset = 0 Auto Hidden
Float Property fConsoleDelaySlider = 2.0 Auto Hidden
String Property sInputKeyA = "BAT ACM" Auto Hidden
String Property sInputKeyB = "BAT ACN" Auto Hidden
String Property sInputKeyC = "BAT ACO" Auto Hidden
String Property sInputKeyD = "BAT ACP" Auto Hidden
String Property sInputKeyE = "BAT ACA" Auto Hidden
String Property sInputKeyF = "BAT ACQ" Auto Hidden
String Property sInputKeyG = "BAT ACR" Auto Hidden
String Property sInputKeyH = "BAT ACS" Auto Hidden
String Property sInputKeyI = "BAT ACT" Auto Hidden
String Property sInputKeyJ = "BAT ACU" Auto Hidden
String Property sInputLoadGame = "BAT ACG" Auto Hidden
String Property sInputCellInter = "BAT ACJ" Auto Hidden
String Property sInputCellExter = "BAT ACI" Auto Hidden
String Property sInputCombatStart = "BAT ACC" Auto Hidden
String Property sInputCombatStop = "BAT ACD" Auto Hidden
String Property sInputSit = "BAT ACL" Auto Hidden
String Property sInputStanding = "BAT ACB" Auto Hidden
String Property sInputRaceSwitch = "BAT ACE" Auto Hidden
String Property sInputSleepStart = "BAT ACH" Auto Hidden
String Property sInputBleedout = "BAT ACK" Auto Hidden
String Property sInputDying = "BAT ACF" Auto Hidden
Int[] Property iLoadGameCodes Auto Hidden
Int[] Property iCellInterCodes Auto Hidden
Int[] Property iCellExterCodes Auto Hidden
Int[] Property iCombatStartCodes Auto Hidden
Int[] Property iCombatStopCodes Auto Hidden
Int[] Property iSitCodes Auto Hidden
Int[] Property iStandingCodes Auto Hidden
Int[] Property iRaceSwitchCodes Auto Hidden
Int[] Property iSleepStartCodes Auto Hidden
Int[] Property iBleedouCodes Auto Hidden
Int[] Property iDyingCodes Auto Hidden
Int[] Property iKeyACodes Auto Hidden
Int[] Property iKeyBCodes Auto Hidden
Int[] Property iKeyCCodes Auto Hidden
Int[] Property iKeyDCodes Auto Hidden
Int[] Property iKeyECodes Auto Hidden
Int[] Property iKeyFCodes Auto Hidden
Int[] Property iKeyGCodes Auto Hidden
Int[] Property iKeyHCodes Auto Hidden
Int[] Property iKeyICodes Auto Hidden
Int[] Property iKeyJCodes Auto Hidden
Bool Property bOnLoadGame = False Auto Hidden
Bool Property bOnCellInter = False Auto Hidden
Bool Property bOnCellExter = False Auto Hidden
Bool Property bOnSleepStart = False Auto Hidden
Bool Property bOnBleedout = False Auto Hidden
Bool Property bOnSit = False Auto Hidden
Bool Property bOnKeyPress = False Auto Hidden
Bool Property bBlackScreen = False Auto Hidden
Bool Property bToggleMenu = False Auto Hidden
Bool Property bRunSilently = False Auto Hidden
Bool Property bOnStanding = False Auto Hidden
Bool Property bOnCombatStart = False Auto Hidden
Bool Property bOnDying = False Auto Hidden
Bool Property bOnCombatStop = False Auto Hidden
Bool Property bSeparateConfig = False Auto Hidden
Bool Property bOnRaceSwitch = False Auto Hidden
Bool Property bUninstall = False Auto Hidden
Bool Property bBlackScreen0 = False Auto Hidden 
Bool Property bBlackScreen1 = False Auto Hidden 
Bool Property bBlackScreen2 = False Auto Hidden 
Bool Property bBlackScreen3 = False Auto Hidden 
Bool Property bBlackScreen4 = False Auto Hidden 
Bool Property bBlackScreen5 = False Auto Hidden 
Bool Property bBlackScreen6 = False Auto Hidden
Bool Property bBlackScreen7 = False Auto Hidden 
Bool Property bBlackScreen8 = False Auto Hidden 
Bool Property bBlackScreen9 = False Auto Hidden 
Bool Property bBlackScreen10 = False Auto Hidden 
Bool Property bBlackScreen11 = False Auto Hidden 
Bool Property bBlackScreen12 = False Auto Hidden 
Bool Property bBlackScreen13 = False Auto Hidden 
Bool Property bBlackScreen14 = False Auto Hidden
Bool Property bBlackScreen15 = False Auto Hidden
Bool Property bBlackScreen16 = False Auto Hidden
Bool Property bBlackScreen17 = False Auto Hidden 
Bool Property bBlackScreen18 = False Auto Hidden 
Bool Property bBlackScreen19 = False Auto Hidden 
Bool Property bBlackScreen20 = False Auto Hidden
Bool Property bToggleMenu0 = False Auto Hidden 
Bool Property bToggleMenu1 = False Auto Hidden 
Bool Property bToggleMenu2 = False Auto Hidden 
Bool Property bToggleMenu3 = False Auto Hidden 
Bool Property bToggleMenu4 = False Auto Hidden 
Bool Property bToggleMenu5 = False Auto Hidden 
Bool Property bToggleMenu6 = False Auto Hidden 
Bool Property bToggleMenu7 = False Auto Hidden 
Bool Property bToggleMenu8 = False Auto Hidden 
Bool Property bToggleMenu9 = False Auto Hidden 
Bool Property bToggleMenu10 = False Auto Hidden 
Bool Property bToggleMenu11 = False Auto Hidden 
Bool Property bToggleMenu12 = False Auto Hidden 
Bool Property bToggleMenu13 = False Auto Hidden 
Bool Property bToggleMenu14 = False Auto Hidden
Bool Property bToggleMenu15 = False Auto Hidden
Bool Property bToggleMenu16 = False Auto Hidden
Bool Property bToggleMenu17 = False Auto Hidden 
Bool Property bToggleMenu18 = False Auto Hidden 
Bool Property bToggleMenu19 = False Auto Hidden 
Bool Property bToggleMenu20 = False Auto Hidden
Bool Property bRunSilently0 = False Auto Hidden
Bool Property bRunSilently1 = False Auto Hidden 
Bool Property bRunSilently2 = False Auto Hidden 
Bool Property bRunSilently3 = False Auto Hidden
Bool Property bRunSilently4 = False Auto Hidden
Bool Property bRunSilently5 = False Auto Hidden
Bool Property bRunSilently6 = False Auto Hidden
Bool Property bRunSilently7 = False Auto Hidden
Bool Property bRunSilently8 = False Auto Hidden
Bool Property bRunSilently9 = False Auto Hidden
Bool Property bRunSilently10 = False Auto Hidden
Bool Property bRunSilently11 = False Auto Hidden 
Bool Property bRunSilently12 = False Auto Hidden 
Bool Property bRunSilently13 = False Auto Hidden
Bool Property bRunSilently14 = False Auto Hidden
Bool Property bRunSilently15 = False Auto Hidden
Bool Property bRunSilently16 = False Auto Hidden
Bool Property bRunSilently17 = False Auto Hidden 
Bool Property bRunSilently18 = False Auto Hidden 
Bool Property bRunSilently19 = False Auto Hidden
Bool Property bRunSilently20 = False Auto Hidden
Spell Property CellChangeDetector Auto
Spell Property SitDetector Auto
Spell Property CombatStartDetector Auto
Spell Property CombatStopDetector Auto
Actor Property PlayerRef Auto
Int Property RunCommandKeyA Auto Hidden 
Int Property RunCommandKeyB Auto Hidden 
Int Property RunCommandKeyC Auto Hidden 
Int Property RunCommandKeyD Auto Hidden 
Int Property RunCommandKeyE Auto Hidden 
Int Property RunCommandKeyF Auto Hidden 
Int Property RunCommandKeyG Auto Hidden 
Int Property RunCommandKeyH Auto Hidden 
Int Property RunCommandKeyI Auto Hidden 
Int Property RunCommandKeyJ Auto Hidden 
Int flags

Event OnPageReset(String page)
	SetCursorFillMode(LEFT_TO_RIGHT)
	If Page == "$General"
		SetCursorPosition(0)
		AddHeaderOption("$General")
		SetCursorPosition(2)
		If bUninstall
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		oidOnSleepStartEnabled = AddToggleOption("$mrt_ARCC_OnSleep", bOnSleepStart,flags)
		SetCursorPosition(3)
		oidInputSleepStart = AddInputOption("$mrt_ARCC_Edit_Command",sInputSleepStart,flags)
		SetCursorPosition(4)
		oidOnDying = AddToggleOption("$mrt_ARCC_OnDying", bOnDying,flags)
		SetCursorPosition(5)
		oidInputDying = AddInputOption("$mrt_ARCC_Edit_Command",sInputDying,flags)
		SetCursorPosition(6)
		oidOnSitEnabled = AddToggleOption("$mrt_ARCC_OnSit", bOnSit,flags)
		SetCursorPosition(7)
		oidInputSit = AddInputOption("$mrt_ARCC_Edit_Command",sInputSit,flags)
		SetCursorPosition(8)
		oidOnStandingEnabled = AddToggleOption("$mrt_ARCC_OnStand", bOnStanding,flags)
		SetCursorPosition(9)
		oidInputStanding = AddInputOption("$mrt_ARCC_Edit_Command",sInputStanding,flags)
		SetCursorPosition(10)
		oidOnBleedoutEnabled = AddToggleOption("$mrt_ARCC_OnBleedout", bOnBleedout,flags)
		SetCursorPosition(11)
		oidInputBleedout = AddInputOption("$mrt_ARCC_Edit_Command",sInputBleedout,flags)
		SetCursorPosition(12)
		oidOnRaceSwitchEnabled = AddToggleOption("$mrt_ARCC_OnRaceSwitch", bOnRaceSwitch,flags)
		SetCursorPosition(13)
		oidInputRaceSwitch = AddInputOption("$mrt_ARCC_Edit_Command",sInputRaceSwitch,flags)
		SetCursorPosition(14)
		oidOnCombatStartEnabled = AddToggleOption("$mrt_ARCC_OnCombatStart", bOnCombatStart,flags)
		SetCursorPosition(15)
		oidInputCombatStart = AddInputOption("$mrt_ARCC_Edit_Command",sInputCombatStart,flags)
		SetCursorPosition(16)
		oidOnCombatStopEnabled = AddToggleOption("$mrt_ARCC_OnCombatStop", bOnCombatStop,flags)
		SetCursorPosition(17)
		oidInputCombatStop = AddInputOption("$mrt_ARCC_Edit_Command",sInputCombatStop,flags)
		SetCursorPosition(18)
		oidOnLoadGameEnabled = AddToggleOption("$mrt_ARCC_OnLoadGame", bOnLoadGame,flags)
		SetCursorPosition(19)
		oidInputLoadGame = AddInputOption("$mrt_ARCC_Edit_Command",sInputLoadGame,flags)
		SetCursorPosition(20)
		oidCellInterEnabled = AddToggleOption("$mrt_ARCC_OnCellInter", bOnCellInter,flags)
		SetCursorPosition(21)
		oidInputCellInter = AddInputOption("$mrt_ARCC_Edit_Command",sInputCellInter,flags)
		SetCursorPosition(22)
		oidOnCellExterEnabled = AddToggleOption("$mrt_ARCC_OnCellExter", bOnCellExter,flags)
		SetCursorPosition(23)
		oidInputCellExter = AddInputOption("$mrt_ARCC_Edit_Command",sInputCellExter,flags)
	ElseIf Page == "$Hotkeys"
		SetCursorPosition(0)
		AddHeaderOption("$Hotkeys")
		SetCursorPosition(2)
		If ( bUninstall )
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		oidOnkeyPress = AddToggleOption("$mrt_ARCC_OnkeyPress", bOnKeyPress,flags)
		SetCursorPosition(4)
		If ( bUninstall || !bOnKeyPress )
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		oidKeyMapOptionA = AddKeyMapOption("$mrt_ARCC_KeyMapOptionA",RunCommandKeyA,flags)
		SetCursorPosition(5)
		oidInputKeyA = AddInputOption("$mrt_ARCC_Edit_Command",sInputKeyA,flags)
		SetCursorPosition(6)
		oidKeyMapOptionB = AddKeyMapOption("$mrt_ARCC_KeyMapOptionB",RunCommandKeyB,flags)
		SetCursorPosition(7)
		oidInputKeyB = AddInputOption("$mrt_ARCC_Edit_Command",sInputKeyB,flags)
		SetCursorPosition(8)
		oidKeyMapOptionC = AddKeyMapOption("$mrt_ARCC_KeyMapOptionC",RunCommandKeyC,flags)
		SetCursorPosition(9)
		oidInputKeyC = AddInputOption("$mrt_ARCC_Edit_Command",sInputKeyC,flags)
		SetCursorPosition(10)
		oidKeyMapOptionD = AddKeyMapOption("$mrt_ARCC_KeyMapOptionD",RunCommandKeyD,flags)
		SetCursorPosition(11)
		oidInputKeyD = AddInputOption("$mrt_ARCC_Edit_Command",sInputKeyD,flags)
		SetCursorPosition(12)
		oidKeyMapOptionE = AddKeyMapOption("$mrt_ARCC_KeyMapOptionE",RunCommandKeyE,flags)
		SetCursorPosition(13)
		oidInputKeyE = AddInputOption("$mrt_ARCC_Edit_Command",sInputKeyE,flags)
		SetCursorPosition(14)
		oidKeyMapOptionF = AddKeyMapOption("$mrt_ARCC_KeyMapOptionF",RunCommandKeyF,flags)
		SetCursorPosition(15)
		oidInputKeyF = AddInputOption("$mrt_ARCC_Edit_Command",sInputKeyF,flags)
		SetCursorPosition(16)
		oidKeyMapOptionG = AddKeyMapOption("$mrt_ARCC_KeyMapOptionG",RunCommandKeyG,flags)
		SetCursorPosition(17)
		oidInputKeyG = AddInputOption("$mrt_ARCC_Edit_Command",sInputKeyG,flags)
		SetCursorPosition(18)
		oidKeyMapOptionH = AddKeyMapOption("$mrt_ARCC_KeyMapOptionH",RunCommandKeyH,flags)
		SetCursorPosition(19)
		oidInputKeyH = AddInputOption("$mrt_ARCC_Edit_Command",sInputKeyH,flags)
		SetCursorPosition(20)
		oidKeyMapOptionI = AddKeyMapOption("$mrt_ARCC_KeyMapOptionI",RunCommandKeyI,flags)
		SetCursorPosition(21)
		oidInputKeyI = AddInputOption("$mrt_ARCC_Edit_Command",sInputKeyI,flags)
		SetCursorPosition(22)
		oidKeyMapOptionJ = AddKeyMapOption("$mrt_ARCC_KeyMapOptionJ",RunCommandKeyJ,flags)
		SetCursorPosition(23)
		oidInputKeyJ = AddInputOption("$mrt_ARCC_Edit_Command",sInputKeyJ,flags)
	ElseIf Page == "$Extra"
		SetCursorPosition(0)
		AddHeaderOption("$Extra")
		SetCursorPosition(2)
		If ( bUninstall || ( PlayerScript.bConsoleUtil && bRunSilently ))
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		oidConsoleDelaySlider = AddSliderOption("$mrt_ARCC_ConsoleDelaySlider_1" ,fConsoleDelaySlider,"$mrt_ARCC_ConsoleDelaySlider_2", flags)
		SetCursorPosition(4)
		If ( bUninstall )
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		oidKeyLayout = AddMenuOption("$mrt_ARCC_KeyLayout", sKeyLayouts[iKeyLayout], flags)
		SetCursorPosition(6)
		oidSeparateConfig = AddToggleOption("$mrt_ARCC_SeparateConfig", bSeparateConfig,flags)
		SetCursorPosition(8)
		If ( bUninstall || bSeparateConfig || ( PlayerScript.bConsoleUtil && bRunSilently ))
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		oidBlackScreen = AddToggleOption("$mrt_ARCC_BlackScreen", bBlackScreen,flags)
		SetCursorPosition(10)
		oidToggleMenu = AddToggleOption("$mrt_ARCC_ToggleMenu", bToggleMenu,flags)
		SetCursorPosition(12)
		If ( bUninstall || bSeparateConfig || !PlayerScript.bConsoleUtil || bBlackScreen || bToggleMenu )
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		oidRunSilently = AddToggleOption("$mrt_ARCC_RunSilently", bRunSilently,flags)
	ElseIf Page == "$Presets"
		Int iFissIndex = Game.GetModByName("FISS.esp")
		SetCursorPosition(0)
		AddHeaderOption("$Presets")
		SetCursorPosition(2)
		If !bUninstall && ( 0 < iFissIndex && iFissIndex < 255 )
			flags = OPTION_FLAG_NONE
		Else
			flags = OPTION_FLAG_DISABLED
		EndIf
		oidLoadPreset_M = AddMenuOption("$mrt_ARCC_Preset_M", sPresets[iLoadPreset], flags)
		SetCursorPosition(3)
		oidSavePreset_M = AddMenuOption("$mrt_ARCC_Preset_M", sPresets[iSavePreset], flags)
		SetCursorPosition(4)
		oidLoadPreset = AddTextOption("$mrt_ARCC_LoadPreset", "", flags)
		SetCursorPosition(5)
		oidSavePreset = AddTextOption("$mrt_ARCC_SavePreset", "", flags)
	ElseIf Page == "$Debug"
		SetCursorPosition(0)
		AddHeaderOption("$Debug")
		SetCursorPosition(2)
		If ( bUninstall )
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		oidUninstall = AddTextOption("$UninstallACC", "", flags)
	EndIf
EndEvent

Event OnOptionInputOpen(Int option)
	If option == oidInputKeyA
		SetInputDialogStartText(sInputKeyA)
	ElseIf option == oidInputKeyB
		SetInputDialogStartText(sInputKeyB)
	ElseIf option == oidInputKeyC
		SetInputDialogStartText(sInputKeyC)
	ElseIf option == oidInputKeyD
		SetInputDialogStartText(sInputKeyD)
	ElseIf option == oidInputKeyE
		SetInputDialogStartText(sInputKeyE)
	ElseIf option == oidInputKeyF
		SetInputDialogStartText(sInputKeyF)
	ElseIf option == oidInputKeyG
		SetInputDialogStartText(sInputKeyG)
	ElseIf option == oidInputKeyH
		SetInputDialogStartText(sInputKeyH)
	ElseIf option == oidInputKeyI
		SetInputDialogStartText(sInputKeyI)
	ElseIf option == oidInputKeyJ
		SetInputDialogStartText(sInputKeyJ)
	ElseIf option == oidInputLoadGame
		SetInputDialogStartText(sInputLoadGame)
	ElseIf option == oidInputCellInter
		SetInputDialogStartText(sInputCellInter)
	ElseIf option == oidInputCellExter
		SetInputDialogStartText(sInputCellExter)
	ElseIf option == oidInputCombatStart
		SetInputDialogStartText(sInputCombatStart)
	ElseIf option == oidInputCombatStop
		SetInputDialogStartText(sInputCombatStop)
	ElseIf option == oidInputSit
		SetInputDialogStartText(sInputSit)
	ElseIf option == oidInputStanding
		SetInputDialogStartText(sInputStanding)
	ElseIf option == oidInputRaceSwitch
		SetInputDialogStartText(sInputRaceSwitch)
	ElseIf option == oidInputSleepStart
		SetInputDialogStartText(sInputSleepStart)
	ElseIf option == oidInputBleedout
		SetInputDialogStartText(sInputBleedout)
	ElseIf option == oidInputDying
		SetInputDialogStartText(sInputDying)
	EndIf
EndEvent

Event OnOptionInputAccept(Int option, String value)
	Int iInvalid
	If option == oidInputKeyA
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iKeyACodes = UtilScript.getKeyCodes(value)
		If !iKeyACodes
			sInputKeyA = "BAT ACM"
			iKeyACodes = UtilScript.getKeyCodes(sInputKeyA)
			SetInputOptionValue(oidInputKeyA,sInputKeyA,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputKeyA = value
		SetInputOptionValue(oidInputKeyA,sInputKeyA,False)
		If sInputKeyA
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently6 = True
					Else
						bRunSilently6 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently6 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen6 = True
					Else
						bBlackScreen6 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu6 = True
					Else
						bToggleMenu6 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputKeyB
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iKeyBCodes = UtilScript.getKeyCodes(value)
		If !iKeyBCodes
			sInputKeyB = "BAT ACN"
			iKeyBCodes = UtilScript.getKeyCodes(sInputKeyB)
			SetInputOptionValue(oidInputKeyB,sInputKeyB,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputKeyB = value
		SetInputOptionValue(oidInputKeyB,sInputKeyB,False)
		If sInputKeyB
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently7 = True
					Else
						bRunSilently7 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently7 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen7 = True
					Else
						bBlackScreen7 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu7 = True
					Else
						bToggleMenu7 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputKeyC
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iKeyCCodes = UtilScript.getKeyCodes(value)
		If !iKeyCCodes
			sInputKeyC = "BAT ACO"
			iKeyCCodes = UtilScript.getKeyCodes(sInputKeyC)
			SetInputOptionValue(oidInputKeyC,sInputKeyC,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputKeyC = value
		SetInputOptionValue(oidInputKeyC,sInputKeyC,False)
		If sInputKeyC
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently8 = True
					Else
						bRunSilently8 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently8 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen8 = True
					Else
						bBlackScreen8 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu8 = True
					Else
						bToggleMenu8 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputKeyD
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iKeyDCodes = UtilScript.getKeyCodes(value)
		If !iKeyDCodes
			sInputKeyD = "BAT ACP"
			iKeyDCodes = UtilScript.getKeyCodes(sInputKeyD)
			SetInputOptionValue(oidInputKeyD,sInputKeyD,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputKeyD = value
		SetInputOptionValue(oidInputKeyD,sInputKeyD,False)
		If sInputKeyD
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently9 = True
					Else
						bRunSilently9 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently9 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen9 = True
					Else
						bBlackScreen9 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu9 = True
					Else
						bToggleMenu9 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputKeyE
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iKeyECodes = UtilScript.getKeyCodes(value)
		If !iKeyECodes
			sInputKeyE = "BAT ACA"
			iKeyECodes = UtilScript.getKeyCodes(sInputKeyE)
			SetInputOptionValue(oidInputKeyE,sInputKeyE,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputKeyE = value
		SetInputOptionValue(oidInputKeyE,sInputKeyE,False)
		If sInputKeyE
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently10 = True
					Else
						bRunSilently10 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently10 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen10 = True
					Else
						bBlackScreen10 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu10 = True
					Else
						bToggleMenu10 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputKeyF
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iKeyFCodes = UtilScript.getKeyCodes(value)
		If !iKeyFCodes
			sInputKeyF = "BAT ACQ"
			iKeyFCodes = UtilScript.getKeyCodes(sInputKeyF)
			SetInputOptionValue(oidInputKeyF,sInputKeyF,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputKeyF = value
		SetInputOptionValue(oidInputKeyF,sInputKeyF,False)
		If sInputKeyF
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently16 = True
					Else
						bRunSilently16 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently16 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen16 = True
					Else
						bBlackScreen16 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu16 = True
					Else
						bToggleMenu16 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputKeyG
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iKeyGCodes = UtilScript.getKeyCodes(value)
		If !iKeyGCodes
			sInputKeyG = "BAT ACR"
			iKeyGCodes = UtilScript.getKeyCodes(sInputKeyG)
			SetInputOptionValue(oidInputKeyG,sInputKeyG,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputKeyG = value
		SetInputOptionValue(oidInputKeyG,sInputKeyG,False)
		If sInputKeyG
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently17 = True
					Else
						bRunSilently17 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently17 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen17 = True
					Else
						bBlackScreen17 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu17 = True
					Else
						bToggleMenu17 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputKeyH
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iKeyHCodes = UtilScript.getKeyCodes(value)
		If !iKeyHCodes
			sInputKeyH = "BAT ACS"
			iKeyHCodes = UtilScript.getKeyCodes(sInputKeyH)
			SetInputOptionValue(oidInputKeyH,sInputKeyH,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputKeyH = value
		SetInputOptionValue(oidInputKeyH,sInputKeyH,False)
		If sInputKeyH
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently18 = True
					Else
						bRunSilently18 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently18 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen18 = True
					Else
						bBlackScreen18 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu18 = True
					Else
						bToggleMenu18 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputKeyI
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iKeyICodes = UtilScript.getKeyCodes(value)
		If !iKeyICodes
			sInputKeyI = "BAT ACT"
			iKeyICodes = UtilScript.getKeyCodes(sInputKeyI)
			SetInputOptionValue(oidInputKeyI,sInputKeyI,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputKeyI = value
		SetInputOptionValue(oidInputKeyI,sInputKeyI,False)
		If sInputKeyI
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently19 = True
					Else
						bRunSilently19 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently19 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen19 = True
					Else
						bBlackScreen19 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu19 = True
					Else
						bToggleMenu19 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputKeyJ
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iKeyJCodes = UtilScript.getKeyCodes(value)
		If !iKeyJCodes
			sInputKeyJ = "BAT ACU"
			iKeyJCodes = UtilScript.getKeyCodes(sInputKeyJ)
			SetInputOptionValue(oidInputKeyJ,sInputKeyJ,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputKeyJ = value
		SetInputOptionValue(oidInputKeyJ,sInputKeyJ,False)
		If sInputKeyJ
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently20 = True
					Else
						bRunSilently20 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently20 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen20 = True
					Else
						bBlackScreen20 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu20 = True
					Else
						bToggleMenu20 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputLoadGame
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iLoadGameCodes = UtilScript.getKeyCodes(value)
		If !iLoadGameCodes
			sInputLoadGame = "BAT ACG"
			iLoadGameCodes = UtilScript.getKeyCodes(sInputLoadGame)
			SetInputOptionValue(oidInputLoadGame,sInputLoadGame,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputLoadGame = value
		SetInputOptionValue(oidInputLoadGame,sInputLoadGame,False)
		If sInputLoadGame
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently0 = True
					Else
						bRunSilently0 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently0 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen0 = True
					Else
						bBlackScreen0 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu0 = True
					Else
						bToggleMenu0 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputCellInter
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iCellInterCodes  = UtilScript.getKeyCodes(value)
		If !iCellInterCodes 
			sInputCellInter = "BAT ACJ"
			iCellInterCodes  = UtilScript.getKeyCodes(sInputCellInter)
			SetInputOptionValue(oidInputCellInter,sInputCellInter,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputCellInter = value
		SetInputOptionValue(oidInputCellInter,sInputCellInter,False)
		If sInputCellInter
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently3 = True
					Else
						bRunSilently3 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently3 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen3 = True
					Else
						bBlackScreen3 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu3 = True
					Else
						bToggleMenu3 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputCellExter
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iCellExterCodes  = UtilScript.getKeyCodes(value)
		If !iCellExterCodes 
			sInputCellExter = "BAT ACI"
			iCellExterCodes  = UtilScript.getKeyCodes(sInputCellExter)
			SetInputOptionValue(oidInputCellExter,sInputCellExter,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputCellExter = value
		SetInputOptionValue(oidInputCellExter,sInputCellExter,False)
		If sInputCellExter
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently2 = True
					Else
						bRunSilently2 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently2 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen2 = True
					Else
						bBlackScreen2 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu2 = True
					Else
						bToggleMenu2 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputCombatStart
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iCombatStartCodes  = UtilScript.getKeyCodes(value)
		If !iCombatStartCodes 
			sInputCombatStart = "BAT ACC"
			iCombatStartCodes  = UtilScript.getKeyCodes(sInputCombatStart)
			SetInputOptionValue(oidInputCombatStart,sInputCombatStart,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputCombatStart = value
		SetInputOptionValue(oidInputCombatStart,sInputCombatStart,False)
		If sInputCombatStart
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently12 = True
					Else
						bRunSilently12 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently12 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen12 = True
					Else
						bBlackScreen12 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu12 = True
					Else
						bToggleMenu12 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputCombatStop
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iCombatStopCodes  = UtilScript.getKeyCodes(value)
		If !iCombatStopCodes 
			sInputCombatStop = "BAT ACD"
			iCombatStopCodes  = UtilScript.getKeyCodes(sInputCombatStop)
			SetInputOptionValue(oidInputCombatStop,sInputCombatStop,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputCombatStop = value
		SetInputOptionValue(oidInputCombatStop,sInputCombatStop,False)
		If sInputCombatStop
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently13 = True
					Else
						bRunSilently13 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently13 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen13 = True
					Else
						bBlackScreen13 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu13 = True
					Else
						bToggleMenu13 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputSit
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iSitCodes = UtilScript.getKeyCodes(value)
		If !iSitCodes 
			sInputSit = "BAT ACL"
			iSitCodes = UtilScript.getKeyCodes(sInputSit)
			SetInputOptionValue(oidInputSit,sInputSit,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputSit = value
		SetInputOptionValue(oidInputSit,sInputSit,False)
		If sInputSit
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently5 = True
					Else
						bRunSilently5 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently5 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen5 = True
					Else
						bBlackScreen5 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu5 = True
					Else
						bToggleMenu5 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputStanding
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iStandingCodes = UtilScript.getKeyCodes(value)
		If !iStandingCodes 
			sInputStanding = "BAT ACB"
			iStandingCodes = UtilScript.getKeyCodes(sInputStanding)
			SetInputOptionValue(oidInputStanding,sInputStanding,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputStanding = value
		SetInputOptionValue(oidInputStanding,sInputStanding,False)
		If sInputStanding
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently11 = True
					Else
						bRunSilently11 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently11 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen11 = True
					Else
						bBlackScreen11 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu11 = True
					Else
						bToggleMenu11 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputRaceSwitch
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iRaceSwitchCodes = UtilScript.getKeyCodes(value)
		If !iRaceSwitchCodes 
			sInputRaceSwitch = "BAT ACE"
			iRaceSwitchCodes = UtilScript.getKeyCodes(sInputRaceSwitch)
			SetInputOptionValue(oidInputRaceSwitch,sInputRaceSwitch,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputRaceSwitch = value
		SetInputOptionValue(oidInputRaceSwitch,sInputRaceSwitch,False)
		If sInputRaceSwitch
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently14 = True
					Else
						bRunSilently14 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently14 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen14 = True
					Else
						bBlackScreen14 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu14 = True
					Else
						bToggleMenu14 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputSleepStart
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iSleepStartCodes = UtilScript.getKeyCodes(value)
		If !iSleepStartCodes 
			sInputSleepStart = "BAT ACH"
			iSleepStartCodes = UtilScript.getKeyCodes(sInputSleepStart)
			SetInputOptionValue(oidInputSleepStart,sInputSleepStart,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputSleepStart = value
		SetInputOptionValue(oidInputSleepStart,sInputSleepStart,False)
		If sInputSleepStart
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently1 = True
					Else
						bRunSilently1 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently1 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen1 = True
					Else
						bBlackScreen1 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu1 = True
					Else
						bToggleMenu1 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputBleedout
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iBleedouCodes = UtilScript.getKeyCodes(value)
		If !iBleedouCodes 
			sInputBleedout = "BAT ACK"
			iBleedouCodes = UtilScript.getKeyCodes(sInputBleedout)
			SetInputOptionValue(oidInputBleedout,sInputBleedout,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputBleedout = value
		SetInputOptionValue(oidInputBleedout,sInputBleedout,False)
		If sInputBleedout
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently4 = True
					Else
						bRunSilently4 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently4 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen4 = True
					Else
						bBlackScreen4 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu4 = True
					Else
						bToggleMenu4 = False
					EndIf
				EndIf
			EndIf
		EndIf
	ElseIf option == oidInputDying
		value = UtilScript.trimInput(value)
		iInvalid = UtilScript.IsInputInvalid(value)
		If iInvalid
			If iInvalid < 0
				ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Else
				ShowMessage("Input String must not include " + StringUtil.GetNthChar(value,iInvalid - 1) + "\nOnly letters(a-z), numbers(0-9), space, period, minus and semicolon are allowed." , False)
			EndIf
			Return
		EndIf
		iDyingCodes = UtilScript.getKeyCodes(value)
		If !iDyingCodes 
			sInputDying = "BAT ACF"
			iDyingCodes = UtilScript.getKeyCodes(sInputDying)
			SetInputOptionValue(oidInputDying,sInputDying,False)
			ShowMessage("$mrt_ARCC_MESG_String_Length_Err", False)
			Return
		EndIf
		sInputDying = value
		SetInputOptionValue(oidInputDying,sInputDying,False)
		If sInputDying
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently15 = True
					Else
						bRunSilently15 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently15 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen15 = True
					Else
						bBlackScreen15 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu15 = True
					Else
						bToggleMenu15 = False
					EndIf
				EndIf
			EndIf
		EndIf
	EndIf
EndEvent

Event OnOptionDefault(Int option)
	If option == oidInputKeyA
		sInputKeyA = "BAT ACM"
		iKeyACodes = UtilScript.getKeyCodes(sInputKeyA)
		SetInputOptionValue(oidInputKeyA,sInputKeyA,False)
	ElseIf option == oidInputKeyB
		sInputKeyB = "BAT ACN"
		iKeyBCodes = UtilScript.getKeyCodes(sInputKeyB)
		SetInputOptionValue(oidInputKeyB,sInputKeyB,False)
	ElseIf option == oidInputKeyC
		sInputKeyC = "BAT ACO"
		iKeyCCodes = UtilScript.getKeyCodes(sInputKeyC)
		SetInputOptionValue(oidInputKeyC,sInputKeyC,False)
	ElseIf option == oidInputKeyD
		sInputKeyD = "BAT ACP"
		iKeyDCodes = UtilScript.getKeyCodes(sInputKeyD)
		SetInputOptionValue(oidInputKeyD,sInputKeyD,False)
	ElseIf option == oidInputKeyE
		sInputKeyE = "BAT ACA"
		iKeyECodes = UtilScript.getKeyCodes(sInputKeyE)
		SetInputOptionValue(oidInputKeyE,sInputKeyE,False)
	ElseIf option == oidInputKeyF
		sInputKeyF = "BAT ACQ"
		iKeyFCodes = UtilScript.getKeyCodes(sInputKeyF)
		SetInputOptionValue(oidInputKeyF,sInputKeyF,False)
	ElseIf option == oidInputKeyG
		sInputKeyG = "BAT ACR"
		iKeyGCodes = UtilScript.getKeyCodes(sInputKeyG)
		SetInputOptionValue(oidInputKeyG,sInputKeyG,False)
	ElseIf option == oidInputKeyH
		sInputKeyH = "BAT ACS"
		iKeyHCodes = UtilScript.getKeyCodes(sInputKeyH)
		SetInputOptionValue(oidInputKeyH,sInputKeyH,False)
	ElseIf option == oidInputKeyI
		sInputKeyI = "BAT ACT"
		iKeyICodes = UtilScript.getKeyCodes(sInputKeyI)
		SetInputOptionValue(oidInputKeyI,sInputKeyI,False)
	ElseIf option == oidInputKeyJ
		sInputKeyJ = "BAT ACU"
		iKeyJCodes = UtilScript.getKeyCodes(sInputKeyJ)
		SetInputOptionValue(oidInputKeyJ,sInputKeyJ,False)
	ElseIf option == oidInputLoadGame
		sInputLoadGame = "BAT ACG"
		iLoadGameCodes = UtilScript.getKeyCodes(sInputLoadGame)
		SetInputOptionValue(oidInputLoadGame,sInputLoadGame,False)
	ElseIf option == oidInputCellInter
		sInputCellInter = "BAT ACJ"
		iCellInterCodes = UtilScript.getKeyCodes(sInputCellInter)
		SetInputOptionValue(oidInputCellInter,sInputCellInter,False)
	ElseIf option == oidInputCellExter
		sInputCellExter = "BAT ACI"
		iCellExterCodes = UtilScript.getKeyCodes(sInputCellExter)
		SetInputOptionValue(oidInputCellExter,sInputCellExter,False)
	ElseIf option == oidInputCombatStart
		sInputCombatStart = "BAT ACC"
		iCombatStartCodes = UtilScript.getKeyCodes(sInputCombatStart)
		SetInputOptionValue(oidInputCombatStart,sInputCombatStart,False)
	ElseIf option == oidInputCombatStop
		sInputCombatStop = "BAT ACD"
		iCombatStopCodes = UtilScript.getKeyCodes(sInputCombatStop)
		SetInputOptionValue(oidInputCombatStop,sInputCombatStop,False)
	ElseIf option == oidInputSit
		sInputSit = "BAT ACL"
		iSitCodes = UtilScript.getKeyCodes(sInputSit)
		SetInputOptionValue(oidInputSit,sInputSit,False)
	ElseIf option == oidInputStanding
		sInputStanding = "BAT ACB"
		iStandingCodes = UtilScript.getKeyCodes(sInputStanding)
		SetInputOptionValue(oidInputStanding,sInputStanding,False)
	ElseIf option == oidInputRaceSwitch
		sInputRaceSwitch = "BAT ACE"
		iRaceSwitchCodes  = UtilScript.getKeyCodes(sInputRaceSwitch)
		SetInputOptionValue(oidInputRaceSwitch,sInputRaceSwitch,False)
	ElseIf option == oidInputSleepStart
		sInputSleepStart = "BAT ACH"
		iSleepStartCodes = UtilScript.getKeyCodes(sInputSleepStart)
		SetInputOptionValue(oidInputSleepStart,sInputSleepStart,False)
	ElseIf option == oidInputBleedout
		sInputBleedout = "BAT ACK"
		iBleedouCodes = UtilScript.getKeyCodes(sInputBleedout)
		SetInputOptionValue(oidInputBleedout,sInputBleedout,False)
	ElseIf option == oidInputDying
		sInputDying = "BAT ACF"
		iDyingCodes = UtilScript.getKeyCodes(sInputDying)
		SetInputOptionValue(oidInputDying,sInputDying,False)
	EndIf
EndEvent

Event OnOptionSliderOpen(Int option)
	If (option == oidConsoleDelaySlider)
		SetSliderDialogStartValue(fConsoleDelaySlider)
		SetSliderDialogDefaultValue(2.0)
		SetSliderDialogRange(1.0, 20.0)
		SetSliderDialogInterval(1.0)
	EndIf
EndEvent

Event OnOptionSliderAccept(Int option, Float value)
	If (option == oidConsoleDelaySlider)
		fConsoleDelaySlider = value
		SetSliderOptionValue(oidConsoleDelaySlider, fConsoleDelaySlider, "$mrt_ARCC_ConsoleDelaySlider_2")
	EndIf
EndEvent

Event OnOptionMenuOpen(Int option)
	If (option == oidKeyLayout)
		SetMenuDialogoptions(sKeyLayouts)
		SetMenuDialogStartIndex(iKeyLayout)
		SetMenuDialogDefaultIndex(0)
	ElseIf (option == oidLoadPreset_M)
		SetMenuDialogoptions(sPresets)
		SetMenuDialogStartIndex(iLoadPreset)
		SetMenuDialogDefaultIndex(0)
	ElseIf (option == oidSavePreset_M)
		SetMenuDialogoptions(sPresets)
		SetMenuDialogStartIndex(iSavePreset)
		SetMenuDialogDefaultIndex(0)
	EndIf
EndEvent

Event OnOptionMenuAccept(Int option, Int index)
	If (option == oidKeyLayout)
	    iKeyLayout = index
		accKeyLayout.SetValue(iKeyLayout)
		UtilScript.SetKeyCodes(iKeyLayout)
		iKeyACodes = UtilScript.getKeyCodes(sInputKeyA)
		If !iKeyACodes
			sInputKeyA = "BAT ACM"
			iKeyACodes = UtilScript.getKeyCodes(sInputKeyA)
			SetInputOptionValue(oidInputKeyA,sInputKeyA,False)
		EndIf
		iKeyBCodes = UtilScript.getKeyCodes(sInputKeyB)
		If !iKeyBCodes
			sInputKeyB = "BAT ACN"
			iKeyBCodes = UtilScript.getKeyCodes(sInputKeyB)
			SetInputOptionValue(oidInputKeyB,sInputKeyB,False)
		EndIf
		iKeyCCodes = UtilScript.getKeyCodes(sInputKeyC)
		If !iKeyCCodes
			sInputKeyC = "BAT ACO"
			iKeyCCodes = UtilScript.getKeyCodes(sInputKeyC)
			SetInputOptionValue(oidInputKeyC,sInputKeyC,False)
		EndIf
		iKeyDCodes = UtilScript.getKeyCodes(sInputKeyD)
		If !iKeyDCodes
			sInputKeyD = "BAT ACP"
			iKeyDCodes = UtilScript.getKeyCodes(sInputKeyD)
			SetInputOptionValue(oidInputKeyD,sInputKeyD,False)
		EndIf
		iKeyECodes = UtilScript.getKeyCodes(sInputKeyE)
		If !iKeyECodes
			sInputKeyE = "BAT ACA"
			iKeyECodes = UtilScript.getKeyCodes(sInputKeyE)
			SetInputOptionValue(oidInputKeyE,sInputKeyE,False)
		EndIf
		iKeyFCodes = UtilScript.getKeyCodes(sInputKeyF)
		If !iKeyFCodes
			sInputKeyF = "BAT ACQ"
			iKeyFCodes = UtilScript.getKeyCodes(sInputKeyF)
			SetInputOptionValue(oidInputKeyF,sInputKeyF,False)
		EndIf
		iKeyGCodes = UtilScript.getKeyCodes(sInputKeyG)
		If !iKeyGCodes
			sInputKeyG = "BAT ACR"
			iKeyGCodes = UtilScript.getKeyCodes(sInputKeyG)
			SetInputOptionValue(oidInputKeyG,sInputKeyG,False)
		EndIf
		iKeyHCodes = UtilScript.getKeyCodes(sInputKeyH)
		If !iKeyHCodes
			sInputKeyH = "BAT ACS"
			iKeyHCodes = UtilScript.getKeyCodes(sInputKeyH)
			SetInputOptionValue(oidInputKeyH,sInputKeyH,False)
		EndIf
		iKeyICodes = UtilScript.getKeyCodes(sInputKeyI)
		If !iKeyICodes
			sInputKeyI = "BAT ACT"
			iKeyICodes = UtilScript.getKeyCodes(sInputKeyI)
			SetInputOptionValue(oidInputKeyI,sInputKeyI,False)
		EndIf
		iKeyJCodes = UtilScript.getKeyCodes(sInputKeyJ)
		If !iKeyJCodes
			sInputKeyJ = "BAT ACU"
			iKeyJCodes = UtilScript.getKeyCodes(sInputKeyJ)
			SetInputOptionValue(oidInputKeyJ,sInputKeyJ,False)
		EndIf
		iLoadGameCodes = UtilScript.getKeyCodes(sInputLoadGame)
		If !iLoadGameCodes
			sInputLoadGame = "BAT ACG"
			iLoadGameCodes = UtilScript.getKeyCodes(sInputLoadGame)
			SetInputOptionValue(oidInputLoadGame,sInputLoadGame,False)
		EndIf
		iCellInterCodes = UtilScript.getKeyCodes(sInputCellInter)
		If !iCellInterCodes
			sInputCellInter = "BAT ACJ"
			iCellInterCodes = UtilScript.getKeyCodes(sInputCellInter)
			SetInputOptionValue(oidInputCellInter,sInputCellInter,False)
		EndIf
		iCellExterCodes = UtilScript.getKeyCodes(sInputCellExter)
		If !iCellExterCodes
			sInputCellExter = "BAT ACI"
			iCellExterCodes = UtilScript.getKeyCodes(sInputCellExter)
			SetInputOptionValue(oidInputCellExter,sInputCellExter,False)
		EndIf
		iCombatStartCodes = UtilScript.getKeyCodes(sInputCombatStart)
		If !iCombatStartCodes
			sInputCombatStart = "BAT ACC"
			iCombatStartCodes = UtilScript.getKeyCodes(sInputCombatStart)
			SetInputOptionValue(oidInputCombatStart,sInputCombatStart,False)
		EndIf
		iCombatStopCodes = UtilScript.getKeyCodes(sInputCombatStop)
		If !iCombatStopCodes
			sInputCombatStop = "BAT ACD"
			iCombatStopCodes = UtilScript.getKeyCodes(sInputCombatStop)
			SetInputOptionValue(oidInputCombatStop,sInputCombatStop,False)
		EndIf
		iSitCodes = UtilScript.getKeyCodes(sInputSit)
		If !iSitCodes
			sInputSit = "BAT ACL"
			iSitCodes = UtilScript.getKeyCodes(sInputSit)
			SetInputOptionValue(oidInputSit,sInputSit,False)
		EndIf
		iStandingCodes = UtilScript.getKeyCodes(sInputStanding)
		If !iStandingCodes
			sInputStanding = "BAT ACB"
			iStandingCodes = UtilScript.getKeyCodes(sInputStanding)
			SetInputOptionValue(oidInputStanding,sInputStanding,False)
		EndIf
		iRaceSwitchCodes  = UtilScript.getKeyCodes(sInputRaceSwitch)
		If !iRaceSwitchCodes 
			sInputRaceSwitch = "BAT ACE"
			iRaceSwitchCodes  = UtilScript.getKeyCodes(sInputRaceSwitch)
			SetInputOptionValue(oidInputRaceSwitch,sInputRaceSwitch,False)
		EndIf
		iSleepStartCodes = UtilScript.getKeyCodes(sInputSleepStart)
		If !iSleepStartCodes
			sInputSleepStart = "BAT ACH"
			iSleepStartCodes = UtilScript.getKeyCodes(sInputSleepStart)
			SetInputOptionValue(oidInputSleepStart,sInputSleepStart,False)
		EndIf
		iBleedouCodes = UtilScript.getKeyCodes(sInputBleedout)
		If !iBleedouCodes
			sInputBleedout = "BAT ACK"
			iBleedouCodes = UtilScript.getKeyCodes(sInputBleedout)
			SetInputOptionValue(oidInputBleedout,sInputBleedout,False)
		EndIf
		iDyingCodes = UtilScript.getKeyCodes(sInputDying)
		If !iDyingCodes
			sInputDying = "BAT ACF"
			iDyingCodes = UtilScript.getKeyCodes(sInputDying)
			SetInputOptionValue(oidInputDying,sInputDying,False)
		EndIf
		SetMenuOptionValue(oidKeyLayout, sKeyLayouts[iKeyLayout])
	ElseIf (option == oidLoadPreset_M)
		iLoadPreset = index
		SetMenuOptionValue(oidLoadPreset_M, sPresets[iLoadPreset])
	ElseIf (option == oidSavePreset_M)
		iSavePreset = index
		SetMenuOptionValue(oidSavePreset_M, sPresets[iSavePreset])
	EndIf
EndEvent

Event OnOptionSelect(Int option)
	If (option == oidOnLoadGameEnabled)
		bOnLoadGame = !bOnLoadGame
		If bOnLoadGame
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently0 = True
					Else
						bRunSilently0 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently0 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen0 = True
					Else
						bBlackScreen0 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu0 = True
					Else
						bToggleMenu0 = False
					EndIf
				EndIf
			EndIf
		EndIf
		SetToggleOptionValue(oidOnLoadGameEnabled, bOnLoadGame)
	ElseIf (option == oidCellInterEnabled)
		bOnCellInter = !bOnCellInter
		If bOnCellInter
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently3 = True
					Else
						bRunSilently3 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently3 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen3 = True
					Else
						bBlackScreen3 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu3 = True
					Else
						bToggleMenu3 = False
					EndIf
				EndIf
			EndIf
		EndIf
		SetToggleOptionValue(oidCellInterEnabled, bOnCellInter)
		If ( bOnCellInter || bOnCellExter )
			InvisibleObject.MoveTo(PlayerRef)
			If !PlayerRef.HasSpell(CellChangeDetector)
				PlayerRef.AddSpell(CellChangeDetector,False)
			EndIf
		Else
			If PlayerRef.HasSpell(CellChangeDetector)
				PlayerRef.RemoveSpell(CellChangeDetector)
			Endif
			InvisibleObject.MoveToMyEditorLocation()
		EndIf
	ElseIf (option == oidOnCellExterEnabled)
		bOnCellExter = !bOnCellExter
		If bOnCellExter
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently2 = True
					Else
						bRunSilently2 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently2 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen2 = True
					Else
						bBlackScreen2 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu2 = True
					Else
						bToggleMenu2 = False
					EndIf
				EndIf
			EndIf
		EndIf
		SetToggleOptionValue(oidOnCellExterEnabled, bOnCellExter)
		If ( bOnCellInter || bOnCellExter )
			InvisibleObject.MoveTo(PlayerRef)
			If !PlayerRef.HasSpell(CellChangeDetector)
				PlayerRef.AddSpell(CellChangeDetector,False)
			EndIf
		Else
			If PlayerRef.HasSpell(CellChangeDetector)
				PlayerRef.RemoveSpell(CellChangeDetector)
			EndIf
			InvisibleObject.MoveToMyEditorLocation()
		EndIf
	ElseIf (option == oidOnSleepStartEnabled)
		bOnSleepStart = !bOnSleepStart
		If bOnSleepStart
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently1 = True
					Else
						bRunSilently1 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently1 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen1 = True
					Else
						bBlackScreen1 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu1 = True
					Else
						bToggleMenu1 = False
					EndIf
				EndIf
			EndIf
		EndIf
		SetToggleOptionValue(oidOnSleepStartEnabled, bOnSleepStart)
		If bOnSleepStart
			PlayerScript.RegisterForSleep()
		EndIf
	ElseIf (option == oidOnSitEnabled)
		bOnSit = !bOnSit
		If bOnSit
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently5 = True
					Else
						bRunSilently5 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently5 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen5 = True
					Else
						bBlackScreen5 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu5 = True
					Else
						bToggleMenu5 = False
					EndIf
				EndIf
			EndIf
		EndIf
		SetToggleOptionValue(oidOnSitEnabled, bOnSit)	
		If bOnSit
			If !PlayerRef.HasSpell(SitDetector)
				PlayerRef.AddSpell(SitDetector,False)
			Endif
		Else
			If PlayerRef.HasSpell(SitDetector)
				PlayerRef.RemoveSpell(SitDetector)
			EndIf
		EndIf
	ElseIf (option == oidOnStandingEnabled)
		bOnStanding = !bOnStanding
		If bOnStanding
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently11 = True
					Else
						bRunSilently11 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently11 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen11 = True
					Else
						bBlackScreen11 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu11 = True
					Else
						bToggleMenu11 = False
					EndIf
				EndIf
			EndIf
		EndIf
		SetToggleOptionValue(oidOnStandingEnabled, bOnStanding)	
		
	ElseIf (option == oidOnRaceSwitchEnabled)
		bOnRaceSwitch = !bOnRaceSwitch
		If bOnRaceSwitch
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently14 = True
					Else
						bRunSilently14 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently14 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen14 = True
					Else
						bBlackScreen14 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu14 = True
					Else
						bToggleMenu14 = False
					EndIf
				EndIf
			EndIf
		EndIf
		SetToggleOptionValue(oidOnRaceSwitchEnabled, bOnRaceSwitch)	
	ElseIf (option == oidOnCombatStartEnabled)
		bOnCombatStart = !bOnCombatStart
		If bOnCombatStart
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently12 = True
					Else
						bRunSilently12 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently12 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen12 = True
					Else
						bBlackScreen12 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu12 = True
					Else
						bToggleMenu12 = False
					EndIf
				EndIf
			EndIf
		EndIf
		SetToggleOptionValue(oidOnCombatStartEnabled, bOnCombatStart)	
		If bOnCombatStart
			If !PlayerRef.HasSpell(CombatStartDetector)
				PlayerRef.AddSpell(CombatStartDetector,False)
			Endif
		Else
			If PlayerRef.HasSpell(CombatStartDetector)
				PlayerRef.RemoveSpell(CombatStartDetector)
			EndIf
		EndIf
	ElseIf (option == oidOnCombatStopEnabled)
		bOnCombatStop = !bOnCombatStop
		If bOnCombatStop
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently13 = True
					Else
						bRunSilently13 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently13 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen13 = True
					Else
						bBlackScreen13 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu13 = True
					Else
						bToggleMenu13 = False
					EndIf
				EndIf
			EndIf
		EndIf
		SetToggleOptionValue(oidOnCombatStopEnabled, bOnCombatStop)	
		If bOnCombatStop
			If !PlayerRef.HasSpell(CombatStopDetector)
				PlayerRef.AddSpell(CombatStopDetector,False)
			Endif
		Else
			If PlayerRef.HasSpell(CombatStopDetector)
				PlayerRef.RemoveSpell(CombatStopDetector)
			EndIf
		EndIf
		
	ElseIf (option == oidOnDying)
		bOnDying = !bOnDying		
		If bOnDying
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently15 = True
					Else
						bRunSilently15 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently15 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen15 = True
					Else
						bBlackScreen15 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu15 = True
					Else
						bToggleMenu15 = False
					EndIf
				EndIf
			EndIf
		EndIf
		SetToggleOptionValue(oidOnDying, bOnDying)
	ElseIf (option == oidOnBleedoutEnabled)
		bOnBleedout = !bOnBleedout		
		If bOnBleedout
			If bSeparateConfig
				Bool bYes = True
				string msg
				If PlayerScript.bConsoleUtil
					msg = "$mrt_ARCC_MESG_RunSilently"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bRunSilently4 = True
					Else
						bRunSilently4 = False
					EndIf					
				EndIf
				If !( PlayerScript.bConsoleUtil && bRunSilently4 )
					msg = "$mrt_ARCC_MESG_BlackScreen"
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bBlackScreen4 = True
					Else
						bBlackScreen4 = False
					EndIf
					msg = "$mrt_ARCC_MESG_ToggleMenu"
					bYes = True
					bYes = ShowMessage(msg, True, "$Yes", "$No")
					If (bYes)
						bToggleMenu4 = True
					Else
						bToggleMenu4 = False
					EndIf
				EndIf
			EndIf
		EndIf
		SetToggleOptionValue(oidOnBleedoutEnabled, bOnBleedout)
	ElseIf (option == oidBlackScreen)
		bBlackScreen = !bBlackScreen
		SetToggleOptionValue(oidBlackScreen, bBlackScreen)
		If ( bBlackScreen || bToggleMenu || !PlayerScript.bConsoleUtil )
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		SetOptionFlags(oidRunSilently, flags)
	ElseIf (option == oidToggleMenu)
		bToggleMenu =!bToggleMenu
		SetToggleOptionValue(oidToggleMenu, bToggleMenu)
		If ( bToggleMenu || bBlackScreen || !PlayerScript.bConsoleUtil)
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		SetOptionFlags(oidRunSilently, flags)
	ElseIf (option == oidRunSilently)
		bRunSilently =!bRunSilently
		SetToggleOptionValue(oidRunSilently, bRunSilently)
		If ( bRunSilently )
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		SetOptionFlags(oidConsoleDelaySlider, flags, True)
		SetOptionFlags(oidBlackScreen, flags, True)
		SetOptionFlags(oidToggleMenu, flags)
	ElseIf (option == oidOnkeyPress)
		bOnKeyPress = !bOnKeyPress
		SetToggleOptionValue(oidOnkeyPress, bOnKeyPress)
		ForcePageReset()
	ElseIf (Option == oidSeparateConfig)
		bSeparateConfig = !bSeparateConfig
		SetToggleOptionValue(oidSeparateConfig, bSeparateConfig)
		If ( !bSeparateConfig && ( PlayerScript.bConsoleUtil && bRunSilently ))
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		SetOptionFlags(oidConsoleDelaySlider, flags, True)
		If ( bSeparateConfig || ( PlayerScript.bConsoleUtil && bRunSilently ))
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		SetOptionFlags(oidBlackScreen, flags, True)
		SetOptionFlags(oidToggleMenu, flags, True)
		If ( bSeparateConfig || !PlayerScript.bConsoleUtil || bBlackScreen || bToggleMenu )
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		SetOptionFlags(oidRunSilently, flags)
	ElseIf (option == oidLoadPreset)
		If !FISSFactory.getFISS()
			ShowMessage("$mrt_ARCC_MESG_FISS_Error", False)
			Return
		EndIf
		String fName = "ARCC_UserSettings" + (iLoadPreset + 1) + ".xml"
		If ShowMessage("$mrt_ARCC_MESG_Load_Preset", True, "$Yes", "$No")
			If bLoadUserSettings(fName)
				ShowMessage("$mrt_ARCC_MESG_Load_Preset_Success", False)
			Else
				ShowMessage("$mrt_ARCC_MESG_Load_Preset_Failure", False)
			EndIf
		EndIf
	ElseIf (option == oidSavePreset)
		FISSInterface fiss = FISSFactory.getFISS()
		If !fiss
			ShowMessage("$mrt_ARCC_MESG_FISS_Error", False)
			Return
		EndIf
		String fName = "ARCC_UserSettings" + (iSavePreset + 1) + ".xml"
		fiss.beginLoad(fName)
		If fiss.endLoad() == ""
			If !ShowMessage("$mrt_ARCC_MESG_Already_Preset", True, "$Yes", "$No")
				Return
			EndIf
		EndIf
		If bSaveUserSettings(fName)
			ShowMessage("$mrt_ARCC_MESG_Save_Preset_Success", False)
		Else
			ShowMessage("$mrt_ARCC_MESG_Save_Preset_Failure", False)
		EndIf
		ForcePageReset()
	ElseIf Option == oidUninstall
		If !bUninstall
			Bool Continue = True
			String msg = "$mrt_ARCC_MESG_Uninstall"
			Continue = ShowMessage(msg, True, "$Yes", "$No")
			If (Continue)
				If playerRef.HasSpell(CellChangeDetector)
					PlayerRef.RemoveSpell(CellChangeDetector )
				EndIf
				If playerRef.HasSpell(SitDetector)
					PlayerRef.RemoveSpell(SitDetector)
				EndIf
				If playerRef.HasSpell(CombatStartDetector)
					PlayerRef.RemoveSpell(CombatStartDetector)
				EndIf
				If playerRef.HasSpell(CombatStopDetector)
					PlayerRef.RemoveSpell(CombatStopDetector)
				EndIf
				InvisibleObject.MoveToMyEditorLocation()
				PlayerQuest.Unregisterforsleep()
				PlayerQuest.Stop()
				UtilScript.Stop()
				bUninstall = True
				ForcePageReset()
				Debug.Trace("ARCC: Uninstalled.")
			EndIf
		EndIf
	EndIf
EndEvent

Event OnoptionKeyMapChange(Int option, Int keyCode, string conflictControl, string conflictName)
	If option == oidKeyMapOptionA
		Bool Continue = True
		If (conflictControl != "")
			string msg
			If (conflictName != "")
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n(" + conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, True, "$Yes", "$No")
		EndIf
		If (Continue)
			RunCommandKeyA = keyCode
			SetKeymapOptionValue(option, RunCommandKeyA)
			RegisterForKey(RunCommandKeyA)			
		EndIf
	ElseIf option == oidKeyMapOptionB
		Bool Continue = True
		If (conflictControl != "")
			string msg
			If (conflictName != "")
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n(" + conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, True, "$Yes", "$No")
		EndIf
		If (Continue)
			RunCommandKeyB = keyCode
			SetKeymapOptionValue(option, RunCommandKeyB)
			RegisterForKey(RunCommandKeyB)			
		EndIf
	ElseIf option == oidKeyMapOptionC
		Bool Continue = True
		If (conflictControl != "")
			string msg
			If (conflictName != "")
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n(" + conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, True, "$Yes", "$No")
		EndIf
		If (Continue)
			RunCommandKeyC = keyCode
			SetKeymapOptionValue(option, RunCommandKeyC)
			RegisterForKey(RunCommandKeyC)			
		EndIf
	ElseIf option == oidKeyMapOptionD
		Bool Continue = True
		If (conflictControl != "")
			string msg
			If (conflictName != "")
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n(" + conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, True, "$Yes", "$No")
		EndIf
		If (Continue)
			RunCommandKeyD = keyCode
			SetKeymapOptionValue(option, RunCommandKeyD)
			RegisterForKey(RunCommandKeyD)			
		EndIf
		
	ElseIf option == oidKeyMapOptionE
		Bool Continue = True
		If (conflictControl != "")
			string msg
			If (conflictName != "")
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n(" + conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, True, "$Yes", "$No")
		EndIf
		If (Continue)
			RunCommandKeyE = keyCode
			SetKeymapOptionValue(option, RunCommandKeyE)
			RegisterForKey(RunCommandKeyE)			
		EndIf
	ElseIf option == oidKeyMapOptionF
		Bool Continue = True
		If (conflictControl != "")
			string msg
			If (conflictName != "")
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n(" + conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, True, "$Yes", "$No")
		EndIf
		If (Continue)
			RunCommandKeyF = keyCode
			SetKeymapOptionValue(option, RunCommandKeyF)
			RegisterForKey(RunCommandKeyF)			
		EndIf
	ElseIf option == oidKeyMapOptionG
		Bool Continue = True
		If (conflictControl != "")
			string msg
			If (conflictName != "")
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n(" + conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, True, "$Yes", "$No")
		EndIf
		If (Continue)
			RunCommandKeyG = keyCode
			SetKeymapOptionValue(option, RunCommandKeyG)
			RegisterForKey(RunCommandKeyG)			
		EndIf
	ElseIf option == oidKeyMapOptionH
		Bool Continue = True
		If (conflictControl != "")
			string msg
			If (conflictName != "")
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n(" + conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, True, "$Yes", "$No")
		EndIf
		If (Continue)
			RunCommandKeyH = keyCode
			SetKeymapOptionValue(option, RunCommandKeyH)
			RegisterForKey(RunCommandKeyH)			
		EndIf
	ElseIf option == oidKeyMapOptionI
		Bool Continue = True
		If (conflictControl != "")
			string msg
			If (conflictName != "")
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n(" + conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, True, "$Yes", "$No")
		EndIf
		If (Continue)
			RunCommandKeyI = keyCode
			SetKeymapOptionValue(option, RunCommandKeyI)
			RegisterForKey(RunCommandKeyI)			
		EndIf
	ElseIf option == oidKeyMapOptionJ
		Bool Continue = True
		If (conflictControl != "")
			string msg
			If (conflictName != "")
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n(" + conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, True, "$Yes", "$No")
		EndIf
		If (Continue)
			RunCommandKeyJ = keyCode
			SetKeymapOptionValue(option, RunCommandKeyJ)
			RegisterForKey(RunCommandKeyJ)			
		EndIf
	EndIf
	If PlayerQuest.IsRunning()
		PlayerScript.mapKey()
	EndIf
EndEvent

Event OnOptionHighlight(Int option)
	If (option == oidOnSitEnabled)
		SetInfoText("$mrt_ARCC_DESC_OnSit")
	ElseIf (option == oidOnSleepStartEnabled)
		SetInfoText("$mrt_ARCC_DESC_OnSleep")
	ElseIf (option == oidCellInterEnabled)
		SetInfoText("$mrt_ARCC_DESC_OnCellInter")
	ElseIf (option == oidOnCellExterEnabled)
		SetInfoText("$mrt_ARCC_DESC_OnCellExter")
	ElseIf (option == oidOnDying)
		SetInfoText("$mrt_ARCC_DESC_OnDying")
	ElseIf (option == oidOnBleedoutEnabled)
		SetInfoText("$mrt_ARCC_DESC_OnBleedout")	
	ElseIf (option == oidOnLoadGameEnabled)
		SetInfoText("$mrt_ARCC_DESC_OnLoadGame")
	ElseIf (option == oidOnCombatStartEnabled)
		SetInfoText("$mrt_ARCC_DESC_CombatStart")
	ElseIf (option == oidOnCombatStopEnabled)
		SetInfoText("$mrt_ARCC_DESC_CombatStop")
	ElseIf (option == oidOnkeyPress)
		SetInfoText("$mrt_ARCC_DESC_OnkeyPress")
	ElseIf (option == oidOnRaceSwitchEnabled)
		SetInfoText("$mrt_ARCC_DESC_RaceSwitch")
	ElseIf (option == oidOnStandingEnabled)
		SetInfoText("$mrt_ARCC_DESC_Standing")
	ElseIf (option == oidKeyMapOptionA)
		SetInfoText("$mrt_ARCC_DESC_KeyMapOptionA")
	ElseIf (option == oidKeyMapOptionB)
		SetInfoText("$mrt_ARCC_DESC_KeyMapOptionB")
	ElseIf (option == oidKeyMapOptionC)
		SetInfoText("$mrt_ARCC_DESC_KeyMapOptionC")
	ElseIf (option == oidKeyMapOptionD)
		SetInfoText("$mrt_ARCC_DESC_KeyMapOptionD")
	ElseIf (option == oidKeyMapOptionE)
		SetInfoText("$mrt_ARCC_DESC_KeyMapOptionE")
	ElseIf (option == oidKeyMapOptionF)
		SetInfoText("$mrt_ARCC_DESC_KeyMapOptionF")
	ElseIf (option == oidKeyMapOptionG)
		SetInfoText("$mrt_ARCC_DESC_KeyMapOptionG")
	ElseIf (option == oidKeyMapOptionH)
		SetInfoText("$mrt_ARCC_DESC_KeyMapOptionH")
	ElseIf (option == oidKeyMapOptionI)
		SetInfoText("$mrt_ARCC_DESC_KeyMapOptionI")
	ElseIf (option == oidKeyMapOptionJ)
		SetInfoText("$mrt_ARCC_DESC_KeyMapOptionJ")
	ElseIf (option == oidBlackScreen)
		SetInfoText("$mrt_ARCC_DESC_BlackScreen")
	ElseIf (option == oidToggleMenu)
		SetInfoText("$mrt_ARCC_DESC_ToggleMenu")
	ElseIf (option == oidRunSilently)
		SetInfoText("$mrt_ARCC_DESC_RunSilently")
	ElseIf (option == oidSeparateConfig)
		SetInfoText("$mrt_ARCC_DESC_SeparateConfig")
	ElseIf (option == oidKeyLayout)
		SetInfoText("$mrt_ARCC_DESC_KeyLayout")
	ElseIf (option == oidConsoleDelaySlider)
		SetInfoText("$mrt_ARCC_DESC_ConsoleDelaySlider")
	ElseIf (option == oidInputKeyA)
		SetInfoText("$mrt_ARCC_DESC_InputKeyA")
	ElseIf (option == oidInputKeyB)
		SetInfoText("$mrt_ARCC_DESC_InputKeyB")
	ElseIf (option == oidInputKeyC)
		SetInfoText("$mrt_ARCC_DESC_InputKeyC")
	ElseIf (option == oidInputKeyD)
		SetInfoText("$mrt_ARCC_DESC_InputKeyD")
	ElseIf (option == oidInputKeyE)
		SetInfoText("$mrt_ARCC_DESC_InputKeyE")
	ElseIf (option == oidInputKeyF)
		SetInfoText("$mrt_ARCC_DESC_InputKeyF")
	ElseIf (option == oidInputKeyG)
		SetInfoText("$mrt_ARCC_DESC_InputKeyG")
	ElseIf (option == oidInputKeyH)
		SetInfoText("$mrt_ARCC_DESC_InputKeyH")
	ElseIf (option == oidInputKeyI)
		SetInfoText("$mrt_ARCC_DESC_InputKeyI")
	ElseIf (option == oidInputKeyJ)
		SetInfoText("$mrt_ARCC_DESC_InputKeyJ")
	ElseIf (option == oidInputLoadGame)
		SetInfoText("$mrt_ARCC_DESC_InputLoadGame")
	ElseIf (option == oidInputCellInter)
		SetInfoText("$mrt_ARCC_DESC_CellInter")
	ElseIf (option == oidInputCellExter)
		SetInfoText("$mrt_ARCC_DESC_InputCellExter")
	ElseIf (option == oidInputCombatStart)
		SetInfoText("mrt_ARCC_DESC_InputCombatStart")
	ElseIf (option == oidInputCombatStop)
		SetInfoText("$mrt_ARCC_DESC_InputCombatStop")
	ElseIf (option == oidInputSit)
		SetInfoText("$mrt_ARCC_DESC_InputSit")
	ElseIf (option == oidInputStanding)
		SetInfoText("$mrt_ARCC_DESC_InputStanding")
	ElseIf (option == oidInputRaceSwitch)
		SetInfoText("$mrt_ARCC_DESC_InputRaceSwitch")
	ElseIf (option == oidInputSleepStart)
		SetInfoText("$mrt_ARCC_DESC_InputSleepStart")
	ElseIf (option == oidInputBleedout)
		SetInfoText("$mrt_ARCC_DESC_InputBleedout")
	ElseIf (option == oidInputDying)
		SetInfoText("$mrt_ARCC_DESC_InputDying")
	ElseIf (option == oidLoadPreset)
		SetInfoText("$mrt_ARCC_DESC_Load_Preset")
	ElseIf (option == oidSavePreset)
		SetInfoText("$mrt_ARCC_DESC_Save_Preset")
	ElseIf (option == oidLoadPreset_M)
		SetInfoText("$mrt_ARCC_DESC_Load_Preset_M")
	ElseIf (option == oidSavePreset_M)
		SetInfoText("$mrt_ARCC_DESC_Save_Preset_M")
	EndIf
EndEvent

Event OnConfigInit()
	If bInit
		Return
	EndIf
	bInit = True
	PlayerScript.CheckModVersion()
EndEvent

Event OnConfigRegister()
	RegisterForSingleUpdate(1.0)
EndEvent



Event OnUpdate()
	bInit = False
EndEvent

Function SetArrays()
	SetPages()
	SetPresets()
	SetLayouts()
	UtilScript.SetKeyCodes(iKeyLayout)
EndFunction

Function SetPages()
	Pages = New String[5]
	pages[0] = "$General"
	pages[1] = "$Hotkeys"
	pages[2] = "$Extra"
	pages[3] = "$Presets"
	pages[4] = "$Debug"
EndFunction

Function SetLayouts()
	sKeyLayouts = New String[3]
	sKeyLayouts[0] = "$QWERTY"
	sKeyLayouts[1] = "$QWERTZ"
	sKeyLayouts[2] = "$AZERTY"
EndFunction

Function SetPresets()
	sPresets = New String[10]
	sPresets[0] = "$Preset1"
	sPresets[1] = "$Preset2"
	sPresets[2] = "$Preset3"
	sPresets[3] = "$Preset4"
	sPresets[4] = "$Preset5"
	sPresets[5] = "$Preset6"
	sPresets[6] = "$Preset7"
	sPresets[7] = "$Preset8"
	sPresets[8] = "$Preset9"
	sPresets[9] = "$Preset10"
EndFunction

Function Update(Float fCurVersion, Float fNewVersion)
	UtilScript.OnInit()
	SetArrays()
	If (fNewVersion >= 1.40 && fCurVersion < 1.40)
		Debug.Trace(self + ": Updating script to version " + 1.40)
	EndIf
	If (fNewVersion >= 1.50 && fCurVersion < 1.50)
		Debug.Trace(self + ": Updating script to version " + 1.50)
		UtilScript.SetKeyCodes(iKeyLayout)
		If !sInputKeyA
			sInputKeyA = "BAT ACM"
		EndIf
		If !iKeyACodes
			iKeyACodes = UtilScript.getKeyCodes(sInputKeyA)
		EndIf
		If !sInputKeyB
			sInputKeyB = "BAT ACN"
		EndIf
		If !iKeyBCodes
			iKeyBCodes = UtilScript.getKeyCodes(sInputKeyB)
			bBlackScreen7 = bBlackScreen6
			bToggleMenu7 = bToggleMenu6
			bRunSilently7 = bRunSilently6
		EndIf
		If !sInputKeyC
			sInputKeyC = "BAT ACO"
		EndIf
		If !iKeyCCodes
			iKeyCCodes = UtilScript.getKeyCodes(sInputKeyC)
			bBlackScreen8 = bBlackScreen6
			bToggleMenu8 = bToggleMenu6
			bRunSilently8 = bRunSilently6
		EndIf
		If !sInputKeyD
			sInputKeyD = "BAT ACP"
		EndIf
		If !iKeyDCodes
			iKeyDCodes = UtilScript.getKeyCodes(sInputKeyD)
			bBlackScreen9 = bBlackScreen6
			bToggleMenu9= bToggleMenu6
			bRunSilently9 = bRunSilently6
		EndIf
		If !sInputKeyE
			sInputKeyE = "BAT ACA"
		EndIf
		If !iKeyECodes
			iKeyECodes = UtilScript.getKeyCodes(sInputKeyE)
			bBlackScreen10 = bBlackScreen6
			bToggleMenu10 = bToggleMenu6
			bRunSilently10 = bRunSilently6
		EndIf
		If !sInputKeyF
			sInputKeyF = "BAT ACQ"
		EndIf
		If !iKeyFCodes
			iKeyFCodes = UtilScript.getKeyCodes(sInputKeyF)
			bBlackScreen16 = bBlackScreen6
			bToggleMenu16 = bToggleMenu6
			bRunSilently16 = bRunSilently6
		EndIf
		If !sInputKeyG
			sInputKeyG = "BAT ACR"
		EndIf
		If !iKeyGCodes
			iKeyGCodes = UtilScript.getKeyCodes(sInputKeyG)
			bBlackScreen17 = bBlackScreen6
			bToggleMenu17 = bToggleMenu6
			bRunSilently17 = bRunSilently6
		EndIf
		If !sInputKeyH
			sInputKeyH = "BAT ACS"
		EndIf
		If !iKeyHCodes
			iKeyHCodes = UtilScript.getKeyCodes(sInputKeyH)
			bBlackScreen18 = bBlackScreen6
			bToggleMenu18 = bToggleMenu6
			bRunSilently18 = bRunSilently6
		EndIf
		If !sInputKeyI
			sInputKeyI = "BAT ACT"
		EndIf
		If !iKeyICodes
			iKeyICodes = UtilScript.getKeyCodes(sInputKeyI)
			bBlackScreen19 = bBlackScreen6
			bToggleMenu19 = bToggleMenu6
			bRunSilently19 = bRunSilently6
		EndIf
		If !sInputKeyJ
			sInputKeyJ = "BAT ACU"
		EndIf
		If !iKeyJCodes
			iKeyJCodes = UtilScript.getKeyCodes(sInputKeyJ)
			bBlackScreen20 = bBlackScreen6
			bToggleMenu20 = bToggleMenu6
			bRunSilently20 = bRunSilently6
		EndIf
		If !sInputLoadGame 
			sInputLoadGame  = "BAT ACG"
		EndIf
		If !iLoadGameCodes 
			iLoadGameCodes  = UtilScript.getKeyCodes(sInputLoadGame)
			bBlackScreen0 = bBlackScreen6
			bToggleMenu0 = bToggleMenu6
			bRunSilently0 = bRunSilently6
		EndIf
		If !sInputCellInter 
			sInputCellInter  = "BAT ACJ"
		EndIf
		If !iCellInterCodes
			iCellInterCodes = UtilScript.getKeyCodes(sInputCellInter)
			bBlackScreen3 = bBlackScreen6
			bToggleMenu3 = bToggleMenu6
			bRunSilently3 = bRunSilently6
		EndIf
		If !sInputCellExter
			sInputCellExter  = "BAT ACI"
		EndIf
		If !iCellExterCodes
			iCellExterCodes = UtilScript.getKeyCodes(sInputCellExter)
			bBlackScreen2 = bBlackScreen6
			bToggleMenu2 = bToggleMenu6
			bRunSilently2 = bRunSilently6
		EndIf
		If !sInputCombatStart
			sInputCombatStart  = "BAT ACC"
		EndIf
		If !iCombatStartCodes
			iCombatStartCodes = UtilScript.getKeyCodes(sInputCombatStart)
			bBlackScreen12 = bBlackScreen6
			bToggleMenu12 = bToggleMenu6
			bRunSilently12 = bRunSilently6
		EndIf
		If !sInputCombatStop
			sInputCombatStop  = "BAT ACD"
		EndIf
		If !iCombatStopCodes
			iCombatStopCodes = UtilScript.getKeyCodes(sInputCombatStop)
			bBlackScreen13 = bBlackScreen6
			bToggleMenu13 = bToggleMenu6
			bRunSilently13 = bRunSilently6
		EndIf
		If !sInputSit
			sInputSit  = "BAT ACL"
		EndIf
		If !iSitCodes
			iSitCodes = UtilScript.getKeyCodes(sInputSit)
			bBlackScreen5 = bBlackScreen6
			bToggleMenu5 = bToggleMenu6
			bRunSilently5 = bRunSilently6
		EndIf
		If !sInputStanding
			sInputStanding  = "BAT ACB"
		EndIf
		If !iStandingCodes
			iStandingCodes = UtilScript.getKeyCodes(sInputStanding)
			bBlackScreen11 = bBlackScreen6
			bToggleMenu11 = bToggleMenu6
			bRunSilently11 = bRunSilently6
		EndIf
		If !sInputRaceSwitch
			sInputRaceSwitch  = "BAT ACE"
		EndIf
		If !iRaceSwitchCodes
			iRaceSwitchCodes = UtilScript.getKeyCodes(sInputRaceSwitch)
			bBlackScreen14 = bBlackScreen6
			bToggleMenu14 = bToggleMenu6
			bRunSilently14 = bRunSilently6
		EndIf
		If !sInputSleepStart
			sInputSleepStart  = "BAT ACH"
		EndIf
		If !iSleepStartCodes
			iSleepStartCodes = UtilScript.getKeyCodes(sInputSleepStart)
			bBlackScreen1 = bBlackScreen6
			bToggleMenu1 = bToggleMenu6
			bRunSilently1 = bRunSilently6
		EndIf
		If !sInputBleedout
			sInputBleedout  = "BAT ACK"
		EndIf
		If !iBleedouCodes
			iBleedouCodes = UtilScript.getKeyCodes(sInputBleedout)
			bBlackScreen4 = bBlackScreen6
			bToggleMenu4 = bToggleMenu6
			bRunSilently4 = bRunSilently6
		EndIf
		If !sInputDying
			sInputDying  = "BAT ACF"
		EndIf
		If !iDyingCodes
			iDyingCodes = UtilScript.getKeyCodes(sInputDying)
			bBlackScreen15 = bBlackScreen6
			bToggleMenu15 = bToggleMenu6
			bRunSilently15 = bRunSilently6
		EndIf
	EndIf
	ForcePageReset()
EndFunction

Bool Function bCheckPreset(FISSInterface fiss, String sFileName)
	fiss.beginLoad(sFileName)
	String Result = fiss.endLoad()
	If Result != ""
		Debug.Trace("ARCC: Error loading user settings -> " + Result)
		Return False
	EndIf
	Return True
EndFunction

Bool function bLoadUserSettings(String sFileName)
	FISSInterface fiss = FISSFactory.getFISS()
	If !fiss
		Debug.Trace("ARCC: Error saving user settings -> FISS not installed. Loading disabled.")
		Return False
	EndIf
	If !bCheckPreset(fiss,sFileName)
		Return False
	EndIf
	String tmpStr
	Int tmpInt
	Float tmpFloat
	fiss.beginLoad(sFileName)
	tmpStr = sInputKeyA
	sInputKeyA = fiss.loadString("sInputKeyA")
	If !UtilScript.IsInputInvalid(sInputKeyA)
		iKeyACodes = UtilScript.getKeyCodes(sInputKeyA)
		If !iKeyACodes
			sInputKeyA = tmpStr
			iKeyACodes = UtilScript.getKeyCodes(sInputKeyA)
		EndIf
	Else
		sInputKeyA = tmpStr
	EndIf
	tmpStr = sInputKeyB
	sInputKeyB = fiss.loadString("sInputKeyB")
	If !UtilScript.IsInputInvalid(sInputKeyB)
		iKeyBCodes = UtilScript.getKeyCodes(sInputKeyB)
		If !iKeyBCodes
			sInputKeyB = tmpStr
			iKeyBCodes = UtilScript.getKeyCodes(sInputKeyB)
		EndIf
	Else
		sInputKeyB = tmpStr
	EndIf
	tmpStr = sInputKeyC
	sInputKeyC = fiss.loadString("sInputKeyC")
	If !UtilScript.IsInputInvalid(sInputKeyC)
		iKeyCCodes = UtilScript.getKeyCodes(sInputKeyC)
		If !iKeyCCodes
			sInputKeyC = tmpStr
			iKeyCCodes = UtilScript.getKeyCodes(sInputKeyC)
		EndIf
	Else
		sInputKeyC = tmpStr
	EndIf
	tmpStr = sInputKeyD
	sInputKeyD = fiss.loadString("sInputKeyD")
	If !UtilScript.IsInputInvalid(sInputKeyD)
		iKeyDCodes = UtilScript.getKeyCodes(sInputKeyD)
		If !iKeyDCodes
			sInputKeyD = tmpStr
			iKeyDCodes = UtilScript.getKeyCodes(sInputKeyD)
		EndIf
	Else
		sInputKeyD = tmpStr
	EndIf
	tmpStr = sInputKeyE
	sInputKeyE = fiss.loadString("sInputKeyE")
	If !UtilScript.IsInputInvalid(sInputKeyE)
		iKeyECodes = UtilScript.getKeyCodes(sInputKeyE)
		If !sInputKeyE
			sInputKeyE = tmpStr
			iKeyECodes = UtilScript.getKeyCodes(sInputKeyE)
		EndIf
	Else
		tmpStr = sInputKeyE
	EndIf
	tmpStr = sInputKeyF
	sInputKeyF = fiss.loadString("sInputKeyF")
	If !UtilScript.IsInputInvalid(sInputKeyF)
		tmpStr = sInputKeyF
		iKeyFCodes = UtilScript.getKeyCodes(sInputKeyF)
		If !iKeyFCodes
			sInputKeyF = tmpStr
			iKeyFCodes = UtilScript.getKeyCodes(sInputKeyF)
		EndIf
	Else
		sInputKeyF = tmpStr
	EndIf
	tmpStr = sInputKeyG
	sInputKeyG = fiss.loadString("sInputKeyG")
	If !UtilScript.IsInputInvalid(sInputKeyG)
		iKeyGCodes = UtilScript.getKeyCodes(sInputKeyG)
		If !iKeyGCodes
			sInputKeyG = tmpStr
			iKeyGCodes = UtilScript.getKeyCodes(sInputKeyG)
		EndIf
	Else
		sInputKeyG = tmpStr
	EndIf
	tmpStr = sInputKeyH
	sInputKeyH = fiss.loadString("sInputKeyH")
	If !UtilScript.IsInputInvalid(sInputKeyH)
		iKeyHCodes = UtilScript.getKeyCodes(sInputKeyH)
		If !iKeyHCodes
			sInputKeyH = tmpStr
			iKeyHCodes = UtilScript.getKeyCodes(sInputKeyH)
		EndIf
	Else
		sInputKeyH = tmpStr
	EndIf
	tmpStr = sInputKeyI
	sInputKeyI = fiss.loadString("sInputKeyI")
	If !UtilScript.IsInputInvalid(sInputKeyI)
		iKeyICodes = UtilScript.getKeyCodes(sInputKeyI)
		If !iKeyICodes
			sInputKeyI = tmpStr
			iKeyICodes = UtilScript.getKeyCodes(sInputKeyI)
		EndIf
	Else
		sInputKeyI = tmpStr
	EndIf
	tmpStr = sInputKeyJ
	sInputKeyJ = fiss.loadString("sInputKeyJ")
	If !UtilScript.IsInputInvalid(sInputKeyJ)
		iKeyJCodes = UtilScript.getKeyCodes(sInputKeyJ)
		If !iKeyJCodes
			sInputKeyJ = tmpStr
			iKeyJCodes = UtilScript.getKeyCodes(sInputKeyJ)
		EndIf
	Else
		sInputKeyJ = tmpStr
	EndIf
	tmpStr = sInputLoadGame 
	sInputLoadGame = fiss.loadString("sInputLoadGame")
	If !UtilScript.IsInputInvalid(sInputLoadGame)
		iLoadGameCodes = UtilScript.getKeyCodes(sInputLoadGame)
		If !iLoadGameCodes 
			sInputLoadGame = tmpStr
			iLoadGameCodes = UtilScript.getKeyCodes(sInputLoadGame)
		EndIf
	Else
		sInputLoadGame = tmpStr
	EndIf
	tmpStr = sInputCellInter 
	sInputCellInter = fiss.loadString("sInputCellInter")
	If !UtilScript.IsInputInvalid(sInputCellInter)
		iCellInterCodes = UtilScript.getKeyCodes(sInputCellInter)
		If !iCellInterCodes 
			sInputCellInter = tmpStr
			iCellInterCodes = UtilScript.getKeyCodes(sInputCellInter)
		EndIf
	Else
		sInputCellInter = tmpStr
	EndIf
	tmpStr = sInputCellExter 
	sInputCellExter = fiss.loadString("sInputCellExter")
	If !UtilScript.IsInputInvalid(sInputCellExter)
		iCellExterCodes = UtilScript.getKeyCodes(sInputCellExter)
		If !iCellExterCodes 
			sInputCellExter = tmpStr
			iCellExterCodes = UtilScript.getKeyCodes(sInputCellExter)
		EndIf
	Else
		sInputCellExter = tmpStr
	EndIf
	tmpStr = sInputCombatStart 
	sInputCombatStart = fiss.loadString("sInputCombatStart")
	If !UtilScript.IsInputInvalid(sInputCombatStart)
		iCombatStartCodes = UtilScript.getKeyCodes(sInputCombatStart)
		If !iCombatStartCodes 
			sInputCombatStart = tmpStr
			iCombatStartCodes = UtilScript.getKeyCodes(sInputCombatStart)
		EndIf
	Else
		sInputCombatStart = tmpStr
	EndIf
	tmpStr = sInputCombatStop
	sInputCombatStop = fiss.loadString("sInputCombatStop")
	If !UtilScript.IsInputInvalid(sInputCombatStop)
		iCombatStopCodes = UtilScript.getKeyCodes(sInputCombatStop)
		If !iCombatStopCodes 
			sInputCombatStop = tmpStr
			iCombatStopCodes = UtilScript.getKeyCodes(sInputCombatStop)
		EndIf
	Else
		sInputCombatStop = tmpStr
	EndIf
	tmpStr = sInputSit
	sInputSit = fiss.loadString("sInputSit")
	If !UtilScript.IsInputInvalid(sInputSit)
		iSitCodes = UtilScript.getKeyCodes(sInputSit)
		If !iSitCodes 
			sInputSit = tmpStr
			iSitCodes = UtilScript.getKeyCodes(sInputSit)
		EndIf
	Else
		sInputSit = tmpStr
	EndIf
	tmpStr = sInputStanding
	sInputStanding = fiss.loadString("sInputStanding")
	If !sInputStanding 
		sInputStanding = tmpStr
		iStandingCodes = UtilScript.getKeyCodes(sInputStanding)
	EndIf
	tmpStr = sInputRaceSwitch
	sInputRaceSwitch = fiss.loadString("sInputRaceSwitch")
	If !UtilScript.IsInputInvalid(sInputRaceSwitch)
		iRaceSwitchCodes = UtilScript.getKeyCodes(sInputRaceSwitch)
		If !iRaceSwitchCodes 
			sInputRaceSwitch = tmpStr
			iRaceSwitchCodes = UtilScript.getKeyCodes(sInputRaceSwitch)
		EndIf
	Else
		sInputRaceSwitch = tmpStr
	EndIf
	tmpStr = sInputSleepStart
	sInputSleepStart = fiss.loadString("sInputSleepStart")
	If !UtilScript.IsInputInvalid(sInputSleepStart)
		iSleepStartCodes = UtilScript.getKeyCodes(sInputSleepStart)
		If !iSleepStartCodes 
			sInputSleepStart = tmpStr
			iSleepStartCodes = UtilScript.getKeyCodes(sInputSleepStart)
		EndIf
	Else
		sInputSleepStart = tmpStr
	EndIf
	tmpStr = sInputBleedout
	sInputBleedout = fiss.loadString("sInputBleedout")
	If !UtilScript.IsInputInvalid(sInputBleedout)
		iBleedouCodes = UtilScript.getKeyCodes(sInputBleedout)
		If !iBleedouCodes 
			sInputBleedout = tmpStr
			iBleedouCodes = UtilScript.getKeyCodes(sInputBleedout)
		EndIf
	Else
		sInputBleedout = tmpStr
	EndIf
	tmpStr = sInputDying
	sInputDying = fiss.loadString("sInputDying")
	If !UtilScript.IsInputInvalid(sInputDying)
		iDyingCodes = UtilScript.getKeyCodes(sInputDying)
		If !iDyingCodes 
			sInputDying = tmpStr
			iDyingCodes = UtilScript.getKeyCodes(sInputDying)
		EndIf
	Else
		sInputDying = tmpStr
	EndIf
	tmpFloat = fConsoleDelaySlider
	fConsoleDelaySlider = fiss.loadFloat("fConsoleDelaySlider")
	If fConsoleDelaySlider <= 0
		fConsoleDelaySlider = tmpFloat
	EndIf
	tmpInt = iKeyLayout
	iKeyLayout  = fiss.loadInt("iKeyLayout")
	if (iKeyLayout  < 0) || (iKeyLayout >= sKeyLayouts.Length)
		iKeyLayout = tmpInt
	Else
		accKeyLayout.SetValue(iKeyLayout)
		UtilScript.SetKeyCodes(iKeyLayout)
		iKeyACodes = UtilScript.getKeyCodes(sInputKeyA)
		If !iKeyACodes
			sInputKeyA = "BAT ACM"
			iKeyACodes = UtilScript.getKeyCodes(sInputKeyA)
		EndIf
		iKeyBCodes = UtilScript.getKeyCodes(sInputKeyB)
		If !iKeyBCodes
			sInputKeyB = "BAT ACN"
			iKeyBCodes = UtilScript.getKeyCodes(sInputKeyB)
		EndIf
		iKeyCCodes = UtilScript.getKeyCodes(sInputKeyC)
		If !iKeyCCodes
			sInputKeyC = "BAT ACO"
			iKeyCCodes = UtilScript.getKeyCodes(sInputKeyC)
		EndIf
		iKeyDCodes = UtilScript.getKeyCodes(sInputKeyD)
		If !iKeyDCodes
			sInputKeyD = "BAT ACP"
			iKeyDCodes = UtilScript.getKeyCodes(sInputKeyD)
		EndIf
		iKeyECodes = UtilScript.getKeyCodes(sInputKeyE)
		If !iKeyECodes
			sInputKeyE = "BAT ACA"
			iKeyECodes = UtilScript.getKeyCodes(sInputKeyE)
		EndIf
		iKeyFCodes = UtilScript.getKeyCodes(sInputKeyF)
		If !iKeyFCodes
			sInputKeyF = "BAT ACQ"
			iKeyFCodes = UtilScript.getKeyCodes(sInputKeyF)
		EndIf
		iKeyGCodes = UtilScript.getKeyCodes(sInputKeyG)
		If !iKeyGCodes
			sInputKeyG = "BAT ACR"
			iKeyGCodes = UtilScript.getKeyCodes(sInputKeyG)
		EndIf
		iKeyHCodes = UtilScript.getKeyCodes(sInputKeyH)
		If !iKeyHCodes
			sInputKeyH = "BAT ACS"
			iKeyHCodes = UtilScript.getKeyCodes(sInputKeyH)
		EndIf
		iKeyICodes = UtilScript.getKeyCodes(sInputKeyI)
		If !iKeyICodes
			sInputKeyI = "BAT ACT"
			iKeyICodes = UtilScript.getKeyCodes(sInputKeyI)
		EndIf
		iKeyJCodes = UtilScript.getKeyCodes(sInputKeyJ)
		If !iKeyJCodes
			sInputKeyJ = "BAT ACU"
			iKeyJCodes = UtilScript.getKeyCodes(sInputKeyJ)
		EndIf
		iLoadGameCodes = UtilScript.getKeyCodes(sInputLoadGame)
		If !iLoadGameCodes
			sInputLoadGame = "BAT ACG"
			iLoadGameCodes = UtilScript.getKeyCodes(sInputLoadGame)
		EndIf
		iCellInterCodes = UtilScript.getKeyCodes(sInputCellInter)
		If !iCellInterCodes
			sInputCellInter = "BAT ACJ"
			iCellInterCodes = UtilScript.getKeyCodes(sInputCellInter)
		EndIf
		iCellExterCodes = UtilScript.getKeyCodes(sInputCellExter)
		If !iCellExterCodes
			sInputCellExter = "BAT ACI"
			iCellExterCodes = UtilScript.getKeyCodes(sInputCellExter)
		EndIf
		iCombatStartCodes = UtilScript.getKeyCodes(sInputCombatStart)
		If !iCombatStartCodes
			sInputCombatStart = "BAT ACC"
			iCombatStartCodes = UtilScript.getKeyCodes(sInputCombatStart)
		EndIf
		iCombatStopCodes = UtilScript.getKeyCodes(sInputCombatStop)
		If !iCombatStopCodes
			sInputCombatStop = "BAT ACD"
			iCombatStopCodes = UtilScript.getKeyCodes(sInputCombatStop)
		EndIf
		iSitCodes = UtilScript.getKeyCodes(sInputSit)
		If !iSitCodes
			sInputSit = "BAT ACL"
			iSitCodes = UtilScript.getKeyCodes(sInputSit)
		EndIf
		iStandingCodes = UtilScript.getKeyCodes(sInputStanding)
		If !iStandingCodes
			sInputStanding = "BAT ACB"
			iStandingCodes = UtilScript.getKeyCodes(sInputStanding)
		EndIf
		iRaceSwitchCodes  = UtilScript.getKeyCodes(sInputRaceSwitch)
		If !iRaceSwitchCodes 
			sInputRaceSwitch = "BAT ACE"
			iRaceSwitchCodes  = UtilScript.getKeyCodes(sInputRaceSwitch)
		EndIf
		iSleepStartCodes = UtilScript.getKeyCodes(sInputSleepStart)
		If !iSleepStartCodes
			sInputSleepStart = "BAT ACH"
			iSleepStartCodes = UtilScript.getKeyCodes(sInputSleepStart)
		EndIf
		iBleedouCodes = UtilScript.getKeyCodes(sInputBleedout)
		If !iBleedouCodes
			sInputBleedout = "BAT ACK"
			iBleedouCodes = UtilScript.getKeyCodes(sInputBleedout)
		EndIf
		iDyingCodes = UtilScript.getKeyCodes(sInputDying)
		If !iDyingCodes
			sInputDying = "BAT ACF"
			iDyingCodes = UtilScript.getKeyCodes(sInputDying)
		EndIf
	EndIf
	bOnLoadGame = fiss.loadBool("bOnLoadGame")
	bOnCellInter = fiss.loadBool("bOnCellInter")
	bOnCellExter = fiss.loadBool("bOnCellExter")
	bOnSleepStart = fiss.loadBool("bOnSleepStart")
	bOnBleedout = fiss.loadBool("bOnBleedout")
	bOnSit = fiss.loadBool("bOnSit")
	bOnKeyPress = fiss.loadBool("bOnKeyPress")
	bBlackScreen = fiss.loadBool("bBlackScreen")
	bToggleMenu = fiss.loadBool("bToggleMenu")
	bRunSilently = fiss.loadBool("bRunSilently")
	bOnStanding = fiss.loadBool("bOnStanding")
	bOnCombatStart = fiss.loadBool("bOnCombatStart")
	bOnDying  = fiss.loadBool("bOnDying")
	bOnCombatStop = fiss.loadBool("bOnCombatStop")
	bSeparateConfig = fiss.loadBool("bSeparateConfig")
	bOnRaceSwitch = fiss.loadBool("bOnRaceSwitch")
	bBlackScreen0 = fiss.loadBool("bBlackScreen0")
	bBlackScreen1 = fiss.loadBool("bBlackScreen1")
	bBlackScreen2 = fiss.loadBool("bBlackScreen2")
	bBlackScreen3 = fiss.loadBool("bBlackScreen3")
	bBlackScreen4 = fiss.loadBool("bBlackScreen4")
	bBlackScreen5 = fiss.loadBool("bBlackScreen5")
	bBlackScreen6 = fiss.loadBool("bBlackScreen6")
	bBlackScreen7 = fiss.loadBool("bBlackScreen7")
	bBlackScreen8 = fiss.loadBool("bBlackScreen8")
	bBlackScreen9 = fiss.loadBool("bBlackScreen9")
	bBlackScreen10 = fiss.loadBool("bBlackScreen10")
	bBlackScreen11 = fiss.loadBool("bBlackScreen11")
	bBlackScreen12 = fiss.loadBool("bBlackScreen12")
	bBlackScreen13 = fiss.loadBool("bBlackScreen13")
	bBlackScreen14 = fiss.loadBool("bBlackScreen14")
	bBlackScreen15 = fiss.loadBool("bBlackScreen15")
	bBlackScreen16 = fiss.loadBool("bBlackScreen16")
	bBlackScreen17 = fiss.loadBool("bBlackScreen17")
	bBlackScreen18 = fiss.loadBool("bBlackScreen18")
	bBlackScreen19 = fiss.loadBool("bBlackScreen19")
	bBlackScreen20 = fiss.loadBool("bBlackScreen20")
	bToggleMenu0 = fiss.loadBool("bToggleMenu0")
	bToggleMenu1 = fiss.loadBool("bToggleMenu1")
	bToggleMenu2 = fiss.loadBool("bToggleMenu2")
	bToggleMenu3 = fiss.loadBool("bToggleMenu3")
	bToggleMenu4 = fiss.loadBool("bToggleMenu4")
	bToggleMenu5 = fiss.loadBool("bToggleMenu5")
	bToggleMenu6 = fiss.loadBool("bToggleMenu6")
	bToggleMenu7 = fiss.loadBool("bToggleMenu7")
	bToggleMenu8 = fiss.loadBool("bToggleMenu8")
	bToggleMenu9 = fiss.loadBool("bToggleMenu9")
	bToggleMenu10 = fiss.loadBool("bToggleMenu10")
	bToggleMenu11 = fiss.loadBool("bToggleMenu11")
	bToggleMenu12 = fiss.loadBool("bToggleMenu12")
	bToggleMenu13 = fiss.loadBool("bToggleMenu13")
	bToggleMenu14 = fiss.loadBool("bToggleMenu14")
	bToggleMenu15 = fiss.loadBool("bToggleMenu15")
	bToggleMenu16 = fiss.loadBool("bToggleMenu16")
	bToggleMenu17 = fiss.loadBool("bToggleMenu17")
	bToggleMenu18 = fiss.loadBool("bToggleMenu18")
	bToggleMenu19 = fiss.loadBool("bToggleMenu19")
	bToggleMenu20 = fiss.loadBool("bToggleMenu20")
	bRunSilently0 = fiss.loadBool("bRunSilently0")
	bRunSilently1 = fiss.loadBool("bRunSilently1")
	bRunSilently2 = fiss.loadBool("bRunSilently2")
	bRunSilently3 = fiss.loadBool("bRunSilently3")
	bRunSilently4 = fiss.loadBool("bRunSilently4")
	bRunSilently5 = fiss.loadBool("bRunSilently5")
	bRunSilently6 = fiss.loadBool("bRunSilently6")
	bRunSilently7 = fiss.loadBool("bRunSilently7")
	bRunSilently8 = fiss.loadBool("bRunSilently8")
	bRunSilently9 = fiss.loadBool("bRunSilently9")
	bRunSilently10 = fiss.loadBool("bRunSilently10")
	bRunSilently11 = fiss.loadBool("bRunSilently11")
	bRunSilently12 = fiss.loadBool("bRunSilently12")
	bRunSilently13 = fiss.loadBool("bRunSilently13")
	bRunSilently14 = fiss.loadBool("bRunSilently14")
	bRunSilently15 = fiss.loadBool("bRunSilently15")
	bRunSilently16 = fiss.loadBool("bRunSilently16")
	bRunSilently17 = fiss.loadBool("bRunSilently17")
	bRunSilently18 = fiss.loadBool("bRunSilently18")
	bRunSilently19 = fiss.loadBool("bRunSilently19")
	bRunSilently20 = fiss.loadBool("bRunSilently20")
	tmpInt = RunCommandKeyA
	RunCommandKeyA = fiss.loadInt("RunCommandKeyA")
	If !UtilScript.bIsKeyboardKey(RunCommandKeyA) || !(UtilScript.GetStandardControl(RunCommandKeyA) || GetCustomControl(RunCommandKeyA))
		RunCommandKeyA = tmpInt
	Else
		RegisterForKey(RunCommandKeyA)
	EndIf
	tmpInt = RunCommandKeyB
	RunCommandKeyB = fiss.loadInt("RunCommandKeyB")
	If !UtilScript.bIsKeyboardKey(RunCommandKeyB) || !(UtilScript.GetStandardControl(RunCommandKeyB) || GetCustomControl(RunCommandKeyB))
		RunCommandKeyB = tmpInt
	Else
		RegisterForKey(RunCommandKeyB)
	EndIf
	tmpInt = RunCommandKeyC
	RunCommandKeyC = fiss.loadInt("RunCommandKeyC")
	If !UtilScript.bIsKeyboardKey(RunCommandKeyC) || !(UtilScript.GetStandardControl(RunCommandKeyC) || GetCustomControl(RunCommandKeyC))
		RunCommandKeyC = tmpInt
	Else
		RegisterForKey(RunCommandKeyC)
	EndIf
	tmpInt = RunCommandKeyD
	RunCommandKeyD = fiss.loadInt("RunCommandKeyD")
	If !UtilScript.bIsKeyboardKey(RunCommandKeyD) || !(UtilScript.GetStandardControl(RunCommandKeyD) || GetCustomControl(RunCommandKeyD))
		RunCommandKeyD = tmpInt
	Else
		RegisterForKey(RunCommandKeyD)
	EndIf
	tmpInt = RunCommandKeyE
	RunCommandKeyE = fiss.loadInt("RunCommandKeyE")
	If !UtilScript.bIsKeyboardKey(RunCommandKeyE) || !(UtilScript.GetStandardControl(RunCommandKeyE) || GetCustomControl(RunCommandKeyE))
		RunCommandKeyE = tmpInt
	Else
		RegisterForKey(RunCommandKeyE)
	EndIf
	tmpInt = RunCommandKeyF
	RunCommandKeyF = fiss.loadInt("RunCommandKeyF")
	If !UtilScript.bIsKeyboardKey(RunCommandKeyF) || !(UtilScript.GetStandardControl(RunCommandKeyF) || GetCustomControl(RunCommandKeyF))
		RunCommandKeyF = tmpInt
	Else
		RegisterForKey(RunCommandKeyF)
	EndIf
	tmpInt = RunCommandKeyG
	RunCommandKeyG = fiss.loadInt("RunCommandKeyG")
	If !UtilScript.bIsKeyboardKey(RunCommandKeyG) || !(UtilScript.GetStandardControl(RunCommandKeyG) || GetCustomControl(RunCommandKeyG))
		RunCommandKeyG = tmpInt
	Else
		RegisterForKey(RunCommandKeyG)
	EndIf
	tmpInt = RunCommandKeyH
	RunCommandKeyH = fiss.loadInt("RunCommandKeyH")
	If !UtilScript.bIsKeyboardKey(RunCommandKeyH) || !(UtilScript.GetStandardControl(RunCommandKeyH) || GetCustomControl(RunCommandKeyH))
		RunCommandKeyH = tmpInt
	Else
		RegisterForKey(RunCommandKeyH)
	EndIf
	tmpInt = RunCommandKeyI
	RunCommandKeyI = fiss.loadInt("RunCommandKeyI")
	If !UtilScript.bIsKeyboardKey(RunCommandKeyI) || !(UtilScript.GetStandardControl(RunCommandKeyI) || GetCustomControl(RunCommandKeyI))
		RunCommandKeyI = tmpInt
	Else
		RegisterForKey(RunCommandKeyI)
	EndIf
	tmpInt = RunCommandKeyJ
	RunCommandKeyJ = fiss.loadInt("RunCommandKeyJ")
	if !UtilScript.bIsKeyboardKey(RunCommandKeyJ) || !(UtilScript.GetStandardControl(RunCommandKeyJ) || GetCustomControl(RunCommandKeyJ))
		RunCommandKeyJ = tmpInt
	Else
		RegisterForKey(RunCommandKeyJ)
	EndIf
	If PlayerQuest.IsRunning()
		PlayerScript.mapKey()
	EndIf
	If ( bOnCellInter || bOnCellExter )
		InvisibleObject.MoveTo(PlayerRef)
		If !PlayerRef.HasSpell(CellChangeDetector)
			PlayerRef.AddSpell(CellChangeDetector,False)
		EndIf
	Else
		If PlayerRef.HasSpell(CellChangeDetector)
			PlayerRef.RemoveSpell(CellChangeDetector)
		Endif
		InvisibleObject.MoveToMyEditorLocation()
	EndIf	
	String Result = fiss.endLoad()
	if Result != ""
		Debug.Trace("ARCC: Error loading user settings -> " + Result)
		LoadDefaultSettings()
		Return False
	EndIf
	Return True
EndFunction


bool function bSaveUserSettings(String sFileName)
	FISSInterface fiss = FISSFactory.getFISS()
	If !fiss
		Debug.Trace("ARCC: Error saving user settings -> FISS not installed. Saving disabled.")
		Return False
	EndIf
	fiss.beginSave(sFileName, "Autorun Console Commands")
	fiss.saveString("sInputKeyA", sInputKeyA)
	fiss.saveString("sInputKeyB", sInputKeyB)
	fiss.saveString("sInputKeyC", sInputKeyC)
	fiss.saveString("sInputKeyD", sInputKeyD)
	fiss.saveString("sInputKeyE", sInputKeyE)
	fiss.saveString("sInputKeyF", sInputKeyF)
	fiss.saveString("sInputKeyG", sInputKeyG)
	fiss.saveString("sInputKeyH", sInputKeyH)
	fiss.saveString("sInputKeyI", sInputKeyI)
	fiss.saveString("sInputKeyJ", sInputKeyJ)
	fiss.saveString("sInputLoadGame", sInputLoadGame)
	fiss.saveString("sInputCellInter", sInputCellInter)
	fiss.saveString("sInputCellExter", sInputCellExter)
	fiss.saveString("sInputCombatStart", sInputCombatStart)
	fiss.saveString("sInputCombatStop", sInputCombatStop)
	fiss.saveString("sInputSit", sInputSit)
	fiss.saveString("sInputStanding", sInputStanding)
	fiss.saveString("sInputRaceSwitch", sInputRaceSwitch)
	fiss.saveString("sInputSleepStart", sInputSleepStart)
	fiss.saveString("sInputBleedout", sInputBleedout)
	fiss.saveString("sInputDying", sInputDying)
	fiss.saveFloat("fConsoleDelaySlider", fConsoleDelaySlider)
	fiss.saveInt("iKeyLayout", iKeyLayout)
	fiss.saveBool("bOnLoadGame",bOnLoadGame)
	fiss.SaveBool("bOnCellInter",bOnCellInter)
	fiss.SaveBool("bOnCellExter",bOnCellExter)
	fiss.SaveBool("bOnSleepStart",bOnSleepStart)
	fiss.SaveBool("bOnBleedout",bOnBleedout)
	fiss.SaveBool("bOnSit",bOnSit)
	fiss.SaveBool("bOnKeyPress",bOnKeyPress)
	fiss.SaveBool("bBlackScreen",bBlackScreen)
	fiss.SaveBool("bToggleMenu",bToggleMenu)
	fiss.SaveBool("bRunSilently",bRunSilently)
	fiss.SaveBool("bOnStanding",bOnStanding)
	fiss.SaveBool("bOnCombatStart",bOnCombatStart)
	fiss.SaveBool("bOnDying",bOnDying)
	fiss.SaveBool("bOnCombatStop",bOnCombatStop)
	fiss.SaveBool("bSeparateConfig",bSeparateConfig)
	fiss.SaveBool("bOnRaceSwitch",bOnRaceSwitch)
	fiss.SaveBool("bBlackScreen0",bBlackScreen0)
	fiss.SaveBool("bBlackScreen1",bBlackScreen1)
	fiss.SaveBool("bBlackScreen2",bBlackScreen2)
	fiss.SaveBool("bBlackScreen3",bBlackScreen3)
	fiss.SaveBool("bBlackScreen4",bBlackScreen4)
	fiss.SaveBool("bBlackScreen5",bBlackScreen5)
	fiss.SaveBool("bBlackScreen6",bBlackScreen6)
	fiss.SaveBool("bBlackScreen7",bBlackScreen7)
	fiss.SaveBool("bBlackScreen8",bBlackScreen8)
	fiss.SaveBool("bBlackScreen9",bBlackScreen9)
	fiss.SaveBool("bBlackScreen10",bBlackScreen10)
	fiss.SaveBool("bBlackScreen11",bBlackScreen11)
	fiss.SaveBool("bBlackScreen12",bBlackScreen12)
	fiss.SaveBool("bBlackScreen13",bBlackScreen13)
	fiss.SaveBool("bBlackScreen14",bBlackScreen14)
	fiss.SaveBool("bBlackScreen15",bBlackScreen15)
	fiss.SaveBool("bBlackScreen16",bBlackScreen16)
	fiss.SaveBool("bBlackScreen17",bBlackScreen17)
	fiss.SaveBool("bBlackScreen18",bBlackScreen18)
	fiss.SaveBool("bBlackScreen19",bBlackScreen19)
	fiss.SaveBool("bBlackScreen20",bBlackScreen20)
	fiss.SaveBool("bToggleMenu0",bToggleMenu0)
	fiss.SaveBool("bToggleMenu1",bToggleMenu1)
	fiss.SaveBool("bToggleMenu2",bToggleMenu2)
	fiss.SaveBool("bToggleMenu3",bToggleMenu3)
	fiss.SaveBool("bToggleMenu4",bToggleMenu4)
	fiss.SaveBool("bToggleMenu5",bToggleMenu5)
	fiss.SaveBool("bToggleMenu6",bToggleMenu6)
	fiss.SaveBool("bToggleMenu7",bToggleMenu7)
	fiss.SaveBool("bToggleMenu8",bToggleMenu8)
	fiss.SaveBool("bToggleMenu9",bToggleMenu9)
	fiss.SaveBool("bToggleMenu10",bToggleMenu10)
	fiss.SaveBool("bToggleMenu11",bToggleMenu11)
	fiss.SaveBool("bToggleMenu12",bToggleMenu12)
	fiss.SaveBool("bToggleMenu13",bToggleMenu13)
	fiss.SaveBool("bToggleMenu14",bToggleMenu14)
	fiss.SaveBool("bToggleMenu15",bToggleMenu15)
	fiss.SaveBool("bToggleMenu16",bToggleMenu16)
	fiss.SaveBool("bToggleMenu17",bToggleMenu17)
	fiss.SaveBool("bToggleMenu18",bToggleMenu18)
	fiss.SaveBool("bToggleMenu19",bToggleMenu19)
	fiss.SaveBool("bToggleMenu20",bToggleMenu20)
	fiss.SaveBool("bRunSilently0",bRunSilently0)
	fiss.SaveBool("bRunSilently1",bRunSilently1)
	fiss.SaveBool("bRunSilently2",bRunSilently2)
	fiss.SaveBool("bRunSilently3",bRunSilently3)
	fiss.SaveBool("bRunSilently4",bRunSilently4)
	fiss.SaveBool("bRunSilently5",bRunSilently5)
	fiss.SaveBool("bRunSilently6",bRunSilently6)
	fiss.SaveBool("bRunSilently7",bRunSilently7)
	fiss.SaveBool("bRunSilently8",bRunSilently8)
	fiss.SaveBool("bRunSilently9",bRunSilently9)
	fiss.SaveBool("bRunSilently10",bRunSilently10)
	fiss.SaveBool("bRunSilently11",bRunSilently11)
	fiss.SaveBool("bRunSilently12",bRunSilently12)
	fiss.SaveBool("bRunSilently13",bRunSilently13)
	fiss.SaveBool("bRunSilently14",bRunSilently14)
	fiss.SaveBool("bRunSilently15",bRunSilently15)
	fiss.SaveBool("bRunSilently16",bRunSilently16)
	fiss.SaveBool("bRunSilently17",bRunSilently17)
	fiss.SaveBool("bRunSilently18",bRunSilently18)
	fiss.SaveBool("bRunSilently19",bRunSilently19)
	fiss.SaveBool("bRunSilently20",bRunSilently20)
	fiss.SaveInt("RunCommandKeyA",RunCommandKeyA)
	fiss.SaveInt("RunCommandKeyB",RunCommandKeyB)
	fiss.SaveInt("RunCommandKeyC",RunCommandKeyC)
	fiss.SaveInt("RunCommandKeyD",RunCommandKeyD)
	fiss.SaveInt("RunCommandKeyE",RunCommandKeyE)
	fiss.SaveInt("RunCommandKeyF",RunCommandKeyF)
	fiss.SaveInt("RunCommandKeyG",RunCommandKeyG)
	fiss.SaveInt("RunCommandKeyH",RunCommandKeyH)
	fiss.SaveInt("RunCommandKeyI",RunCommandKeyI)
	fiss.SaveInt("RunCommandKeyJ",RunCommandKeyJ)
	String Result = fiss.endSave()
	If Result != ""
		Debug.Trace("ARCC: Error saving user settings -> " + Result)
		Return False
	EndIf
	Return True
EndFunction

Function LoadDefaultSettings()
	sInputKeyA = "BAT ACM"
	sInputKeyB = "BAT ACN"
	sInputKeyC = "BAT ACO"
	sInputKeyD = "BAT ACP"
	sInputKeyE = "BAT ACA"
	sInputKeyF = "BAT ACQ"
	sInputKeyG = "BAT ACR"
	sInputKeyH = "BAT ACS"
	sInputKeyI = "BAT ACT"
	sInputKeyJ = "BAT ACU"
	sInputLoadGame = "BAT ACG"
	sInputCellInter = "BAT ACJ"
	sInputCellExter = "BAT ACI"
	sInputCombatStart = "BAT ACC"
	sInputCombatStop = "BAT ACD"
	sInputSit = "BAT ACL"
	sInputStanding = "BAT ACB"
	sInputRaceSwitch = "BAT ACE"
	sInputSleepStart = "BAT ACH"
	sInputBleedout = "BAT ACK"
	sInputDying = "BAT ACF"
	iKeyLayout = 0
	accKeyLayout.SetValue(iKeyLayout)
	UtilScript.SetKeyCodes(iKeyLayout)
	iKeyACodes = UtilScript.getKeyCodes(sInputKeyA)
	iKeyBCodes = UtilScript.getKeyCodes(sInputKeyB)
	iKeyCCodes = UtilScript.getKeyCodes(sInputKeyC)
	iKeyDCodes = UtilScript.getKeyCodes(sInputKeyD)
	iKeyECodes = UtilScript.getKeyCodes(sInputKeyE)
	iKeyFCodes = UtilScript.getKeyCodes(sInputKeyF)
	iKeyGCodes = UtilScript.getKeyCodes(sInputKeyG)
	iKeyHCodes = UtilScript.getKeyCodes(sInputKeyH)
	iKeyICodes = UtilScript.getKeyCodes(sInputKeyI)
	iKeyJCodes = UtilScript.getKeyCodes(sInputKeyJ)
	iLoadGameCodes = UtilScript.getKeyCodes(sInputLoadGame)
	iCellInterCodes = UtilScript.getKeyCodes(sInputCellInter)
	iCellExterCodes = UtilScript.getKeyCodes(sInputCellExter)
	iCombatStartCodes = UtilScript.getKeyCodes(sInputCombatStart)
	iCombatStopCodes = UtilScript.getKeyCodes(sInputCombatStop)
	iSitCodes = UtilScript.getKeyCodes(sInputSit)
	iStandingCodes = UtilScript.getKeyCodes(sInputStanding)
	iRaceSwitchCodes  = UtilScript.getKeyCodes(sInputRaceSwitch)
	iSleepStartCodes = UtilScript.getKeyCodes(sInputSleepStart)
	iBleedouCodes = UtilScript.getKeyCodes(sInputBleedout)
	iDyingCodes = UtilScript.getKeyCodes(sInputDying)
	fConsoleDelaySlider = 2.0
	bOnLoadGame = False
	bOnCellInter = False
	bOnCellExter = False
	bOnSleepStart = False
	bOnBleedout = False
	bOnSit = False
	bOnKeyPress = False
	bBlackScreen = False
	bToggleMenu = False
	bRunSilently = False
	bOnStanding = False
	bOnCombatStart = False
	bOnDying  = False
	bOnCombatStop = False
	bSeparateConfig = False
	bOnRaceSwitch = False
	bBlackScreen0 = False
	bBlackScreen1 = False
	bBlackScreen2 = False
	bBlackScreen3 = False
	bBlackScreen4 = False
	bBlackScreen5 = False
	bBlackScreen6 = False
	bBlackScreen7 = False
	bBlackScreen8 = False
	bBlackScreen9 = False
	bBlackScreen10 = False
	bBlackScreen11 = False
	bBlackScreen12 = False
	bBlackScreen13 = False
	bBlackScreen14 =False
	bBlackScreen15 = False
	bBlackScreen16 = False
	bBlackScreen17 = False
	bBlackScreen18 = False
	bBlackScreen19 = False
	bBlackScreen20 = False
	bToggleMenu0 = False
	bToggleMenu1 = False
	bToggleMenu2 = False
	bToggleMenu3 = False
	bToggleMenu4 = False
	bToggleMenu5 = False
	bToggleMenu6 = False
	bToggleMenu7 = False
	bToggleMenu8 = False
	bToggleMenu9 = False
	bToggleMenu10 = False
	bToggleMenu11 = False
	bToggleMenu12 = False
	bToggleMenu13 = False
	bToggleMenu14 = False
	bToggleMenu15 = False
	bToggleMenu16 = False
	bToggleMenu17 = False
	bToggleMenu18 = False
	bToggleMenu19 = False
	bToggleMenu20 = False
	bRunSilently0 = False
	bRunSilently1 = False
	bRunSilently2 = False
	bRunSilently3 = False
	bRunSilently4 = False
	bRunSilently5 = False
	bRunSilently6 = False
	bRunSilently7 = False
	bRunSilently8 = False
	bRunSilently9 = False
	bRunSilently10 = False
	bRunSilently11 = False
	bRunSilently12 = False
	bRunSilently13 = False
	bRunSilently14 = False
	bRunSilently15 = False
	bRunSilently16 = False
	bRunSilently17 = False
	bRunSilently18 = False
	bRunSilently19 = False
	bRunSilently20 = False
	RunCommandKeyA = 0
	RunCommandKeyB = 0
	RunCommandKeyC = 0
	RunCommandKeyD = 0
	RunCommandKeyE = 0
	RunCommandKeyF = 0
	RunCommandKeyG = 0
	RunCommandKeyH = 0
	RunCommandKeyI = 0
	RunCommandKeyJ = 0
	If PlayerQuest.IsRunning()
		PlayerScript.mapKey()
	EndIf
	If ( bOnCellInter || bOnCellExter )
		InvisibleObject.MoveTo(PlayerRef)
		If !PlayerRef.HasSpell(CellChangeDetector)
			PlayerRef.AddSpell(CellChangeDetector,False)
		EndIf
	Else
		If PlayerRef.HasSpell(CellChangeDetector)
			PlayerRef.RemoveSpell(CellChangeDetector)
		Endif
		InvisibleObject.MoveToMyEditorLocation()
	EndIf	
EndFunction

String Function GetCustomControl(int keyCode)
	If keyCode == RunCommandKeyA
		Return "Hotkey 1"
	ElseIf keyCode == RunCommandKeyB
		Return "Hotkey 2"
	ElseIf keyCode == RunCommandKeyC
		Return "Hotkey 3"
	ElseIf keyCode == RunCommandKeyD
		Return "Hotkey 4"
	ElseIf keyCode == RunCommandKeyE
		Return "Hotkey 5"
	ElseIf keyCode == RunCommandKeyF
		Return "Hotkey 6"
	ElseIf keyCode == RunCommandKeyG
		Return "Hotkey 7"
	ElseIf keyCode == RunCommandKeyH
		Return "Hotkey 8"
	ElseIf keyCode == RunCommandKeyI
		Return "Hotkey 9"
	ElseIf keyCode == RunCommandKeyJ
		Return "Hotkey 10"
	Else
		Return ""
	EndIf
EndFunction
