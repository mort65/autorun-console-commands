Scriptname zzzacc_MCMScript extends SKI_ConfigBase  

Int oidOnLoadGameEnabled
Int oidCellInterEnabled
Int oidOnCellExterEnabled
Int oidOnSleepStartEnabled
int oidOnBleedoutEnabled
int oidOnSitEnabled
Int oidOnRaceSwitchEnabled
int oidOnkeyPress
Int oidOnDying
int oidKeyMapOptionA
int oidKeyMapOptionB
int oidKeyMapOptionC
int oidKeyMapOptionD
Int oidKeyMapOptionE
Int oidBlackScreen
Int oidToggleMenu
Int oidOnStandingEnabled
Int oidOnCombatStartEnabled
Int oidOnCombatStopEnabled
Int oidSeparateConfig
Int oidUninstall
int oidKeyLayout
zzzacc_PlayerScript Property PlayerScript Auto
Objectreference Property InvisibleObject Auto
Quest Property PlayerQuest Auto
Bool Property bOnLoadGame = False Auto Hidden
GlobalVariable Property FirstRun Auto
String[] Property sKeyLayouts Auto Hidden
Int Property iKeyLayout = 0 Auto Hidden
Bool Property bOnCellInter = False Auto Hidden
Bool Property bOnCellExter = False Auto Hidden
Bool Property bOnSleepStart = False Auto Hidden
Bool Property bOnBleedout = False Auto Hidden
Bool Property bOnSit = False Auto Hidden
Bool Property bOnKeyPress = False Auto Hidden
Bool Property bBlackScreen = False Auto Hidden
Bool Property bToggleMenu = False Auto Hidden
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
Bool Property bBlackScreen11 = False Auto Hidden 
Bool Property bBlackScreen12 = False Auto Hidden 
Bool Property bBlackScreen13 = False Auto Hidden 
Bool Property bBlackScreen14 = False Auto Hidden
Bool Property bBlackScreen15 = False Auto Hidden
Bool Property bBlackScreen16 = False Auto Hidden
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
Spell Property CellChangeDetector Auto
Spell Property SitDetector Auto
Spell Property CombatStartDetector Auto
Spell Property CombatStopDetector Auto
Actor Property PlayerRef Auto
Int Property RunCommandKeyA Auto
Int Property RunCommandKeyB Auto
Int Property RunCommandKeyC Auto
Int Property RunCommandKeyD Auto
Int Property RunCommandKeyE Auto
Int flags

Event OnPageReset(String page)
	SetArrays()
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
		SetCursorPosition(4)
		oidOnDying = AddToggleOption("$mrt_ARCC_OnDying", bOnDying,flags)
		SetCursorPosition(6)
		oidOnSitEnabled = AddToggleOption("$mrt_ARCC_OnSit", bOnSit,flags)
		SetCursorPosition(8)
		oidOnStandingEnabled = AddToggleOption("$mrt_ARCC_OnStand", bOnStanding,flags)
		SetCursorPosition(10)
		oidOnBleedoutEnabled = AddToggleOption("$mrt_ARCC_OnBleedout", bOnBleedout,flags)
		SetCursorPosition(12)
		oidOnRaceSwitchEnabled = AddToggleOption("$mrt_ARCC_OnRaceSwitch", bOnRaceSwitch,flags)
		SetCursorPosition(3)
		oidOnCombatStartEnabled = AddToggleOption("$mrt_ARCC_OnCombatStart", bOnCombatStart,flags)
		SetCursorPosition(5)
		oidOnCombatStopEnabled = AddToggleOption("$mrt_ARCC_OnCombatStop", bOnCombatStop,flags)
		SetCursorPosition(7)
		oidOnLoadGameEnabled = AddToggleOption("$mrt_ARCC_OnLoadGame", bOnLoadGame,flags)
		SetCursorPosition(9)
		oidCellInterEnabled = AddToggleOption("$mrt_ARCC_OnCellInter", bOnCellInter,flags)
		SetCursorPosition(11)
		oidOnCellExterEnabled = AddToggleOption("$mrt_ARCC_OnCellExter", bOnCellExter,flags)
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
		SetCursorPosition(3)
		If ( bUninstall || !bOnKeyPress )
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		oidKeyMapOptionA = AddKeyMapOption("$mrt_ARCC_KeyMapOptionA",RunCommandKeyA,flags)
		SetCursorPosition(5)
		oidKeyMapOptionB = AddKeyMapOption("$mrt_ARCC_KeyMapOptionB",RunCommandKeyB,flags)
		SetCursorPosition(7)
		oidKeyMapOptionC = AddKeyMapOption("$mrt_ARCC_KeyMapOptionC",RunCommandKeyC,flags)
		SetCursorPosition(9)
		oidKeyMapOptionD = AddKeyMapOption("$mrt_ARCC_KeyMapOptionD",RunCommandKeyD,flags)
		SetCursorPosition(11)
		oidKeyMapOptionE = AddKeyMapOption("$mrt_ARCC_KeyMapOptionE",RunCommandKeyE,flags)
	ElseIf Page == "$Extra"
		SetCursorPosition(0)
		AddHeaderOption("$Extra")
		SetCursorPosition(2)
		If ( bUninstall || bSeparateConfig )
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		oidBlackScreen = AddToggleOption("$mrt_ARCC_BlackScreen", bBlackScreen,flags)
		SetCursorPosition(4)
		oidToggleMenu = AddToggleOption("$mrt_ARCC_ToggleMenu", bToggleMenu,flags)
		SetCursorPosition(6)
		If ( bUninstall )
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		oidSeparateConfig = AddToggleOption("$mrt_ARCC_SeparateConfig", bSeparateConfig,flags)
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

Event OnOptionSelect(Int option)
	SetArrays()
	string page = CurrentPage
	If (option == oidOnLoadGameEnabled)
		bOnLoadGame = !bOnLoadGame
		If bOnLoadGame
			If bSeparateConfig
				Bool bYes = True
				string msg
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
		SetToggleOptionValue(oidOnLoadGameEnabled, bOnLoadGame)
	ElseIf (option == oidCellInterEnabled)
		bOnCellInter = !bOnCellInter
		If bOnCellInter
			If bSeparateConfig
				Bool bYes = True
				string msg
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
		SetToggleOptionValue(oidOnStandingEnabled, bOnStanding)	
		
	ElseIf (option == oidOnRaceSwitchEnabled)
		bOnRaceSwitch = !bOnRaceSwitch
		If bOnRaceSwitch
			If bSeparateConfig
				Bool bYes = True
				string msg
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
		SetToggleOptionValue(oidOnRaceSwitchEnabled, bOnRaceSwitch)	
	ElseIf (option == oidOnCombatStartEnabled)
		bOnCombatStart = !bOnCombatStart
		If bOnCombatStart
			If bSeparateConfig
				Bool bYes = True
				string msg
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
		SetToggleOptionValue(oidOnDying, bOnDying)
	ElseIf (option == oidOnBleedoutEnabled)
		bOnBleedout = !bOnBleedout		
		If bOnBleedout
			If bSeparateConfig
				Bool bYes = True
				string msg
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
		SetToggleOptionValue(oidOnBleedoutEnabled, bOnBleedout)
	ElseIf (option == oidBlackScreen)
		bBlackScreen = !bBlackScreen
		SetToggleOptionValue(oidBlackScreen, bBlackScreen)
	ElseIf (option == oidToggleMenu)
		bToggleMenu =!bToggleMenu
		SetToggleOptionValue(oidToggleMenu, bToggleMenu)
	ElseIf (option == oidOnkeyPress)
		bOnKeyPress = !bOnKeyPress
		If bOnKeyPress
			If bSeparateConfig
				Bool bYes = True
				string msg
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
		SetToggleOptionValue(oidOnkeyPress, bOnKeyPress)
		If ( bUninstall || !bOnKeyPress )
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		SetOptionFlags(oidKeyMapOptionA, flags, True)
		SetOptionFlags(oidKeyMapOptionB, flags, True)
		SetOptionFlags(oidKeyMapOptionC, flags, True)
		SetOptionFlags(oidKeyMapOptionD, flags, True)
		SetOptionFlags(oidKeyMapOptionE, flags)
	ElseIf (Option == oidSeparateConfig)
		bSeparateConfig = !bSeparateConfig
		SetToggleOptionValue(oidSeparateConfig, bSeparateConfig)
		If bSeparateConfig
			flags = OPTION_FLAG_DISABLED
		Else
			flags = OPTION_FLAG_NONE
		EndIf
		SetOptionFlags(oidBlackScreen, flags, True)
		SetOptionFlags(oidToggleMenu, flags)
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
				bUninstall = True
				ForcePageReset()
			EndIf
		EndIf
	EndIf
EndEvent

Event OnoptionKeyMapChange(Int option, Int keyCode, string conflictControl, string conflictName)
	string page = CurrentPage
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
	EndIf
	If PlayerQuest.IsRunning()
		PlayerScript.mapKey()
	EndIf
EndEvent

Event OnOptionHighlight(Int option)
	string page = CurrentPage
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
	ElseIf (option == oidBlackScreen)
		SetInfoText("$mrt_ARCC_DESC_BlackScreen")
	ElseIf (option == oidToggleMenu)
		SetInfoText("$mrt_ARCC_DESC_ToggleMenu")
	ElseIf (option == oidSeparateConfig)
		SetInfoText("$mrt_ARCC_DESC_SeparateConfig")
	EndIf
EndEvent

Event OnConfigInit()
	SetArrays()
EndEvent

Int Function GetVersion()
	Return 1
EndFunction

Event OnVersionUpdate(int a_version)
EndEvent

Function SetArrays()
	SetPages()
EndFunction

Function SetPages()
	Pages = new String[4]
	pages[0] = "$General"
	pages[1] = "$Hotkeys"
	pages[2] = "$Extra"
	pages[3] = "$Debug"
EndFunction