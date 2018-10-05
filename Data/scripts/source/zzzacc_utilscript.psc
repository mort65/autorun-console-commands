Scriptname zzzacc_UtilScript extends Quest Conditional 

Import StringUtil

zzzacc_MCMScript Property MCMScript Auto
Int[] Property _KeyCodes Auto Hidden
Int[] Property keyCodes Auto Hidden
String Property letters Auto Hidden
String Property digits Auto Hidden
String Property puncs Auto Hidden
String Property keys Auto Hidden
String[] Property ControlName Auto Hidden
Int[] Property ControlKeyCode Auto Hidden
Int maxKCode = 1000
Int minKCode = 0

Event OnInit()
	letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	digits = "1234567890"
	puncs = ".-; "
	keys = letters + digits + puncs
	keyCodes = New Int[40]
	keyCodes[0] = 30 ;A
	keyCodes[1] = 48 ;B
	keyCodes[2] = 46 ;C
	keyCodes[3] = 32 ;D
	keyCodes[4] = 18 ;E
	keyCodes[5] = 33 ;F
	keyCodes[6] = 34 ;G
	keyCodes[7] = 35 ;H
	keyCodes[8] = 23 ;I
	keyCodes[9] = 36 ;J
	keyCodes[10] = 37 ;K
	keyCodes[11] = 38 ;L
	keyCodes[12] = 50 ;M
	keyCodes[13] = 49 ;N
	keyCodes[14] = 24 ;O
	keyCodes[15] = 25 ;P
	keyCodes[16] = 16 ;Q
	keyCodes[17] = 19 ;R
	keyCodes[18] = 31 ;S
	keyCodes[19] = 20 ;T
	keyCodes[20] = 22 ;U
	keyCodes[21] = 47 ;V
	keyCodes[22] = 17 ;W
	keyCodes[23] = 45 ;X
	keyCodes[24] = 21 ;Y
	keyCodes[25] = 44 ;Z
	keyCodes[26] = 2 ;1
	keyCodes[27] = 3 ;2
	keyCodes[28] = 4 ;3
	keyCodes[29] = 5 ;4
	keyCodes[30] = 6 ;5
	keyCodes[31] = 7 ;6
	keyCodes[32] = 8 ;7
	keyCodes[33] = 9 ;8
	keyCodes[34] = 10 ;9
	keyCodes[35] = 11 ;0
	keyCodes[36] = 52 ;.
	keyCodes[37] = 74 ;NUM-
	keyCodes[38] = 39 ;;
	keyCodes[39] = 57 ;Spacebar
	RecordControlNames()
	ControlKeyCode = New Int[43]
EndEvent

Function SetKeyCodes(Int Layout)
	_KeyCodes = New Int[101]
	Int i = 0
	While i < 83
		_KeyCodes[i] = (i + 1)
		i += 1
	EndWhile
	_KeyCodes[83] = 87 ;F11
	_KeyCodes[84] = 88 ;F12
	_KeyCodes[85] = 156 ;NUM Enter
	_KeyCodes[86] = 157 ;Right Control
	_KeyCodes[87] = 181 ;NUM/
	_KeyCodes[88] = 183 ;SysRq / PtrScr
	_KeyCodes[89] = 184 ;Right Alt
	_KeyCodes[90] = 197 ;Pause
	_KeyCodes[91] = 199 ;Home
	_KeyCodes[92] = 200 ;Up Arrow
	_KeyCodes[93] = 201 ;PgUp
	_KeyCodes[94] = 203 ;Left Arrow
	_KeyCodes[95] = 205 ;Right Arrow
	_KeyCodes[96] = 207 ;End
	_KeyCodes[97] = 208 ;Down Arrow
	_KeyCodes[98] = 209 ;PgDown 
	_KeyCodes[99] = 210 ;Insert 
	_KeyCodes[100] = 211 ;Delete
	If Layout == 1 ;QWERTZ
		_KeyCodes[20] = 44 ;Y = Z
		_KeyCodes[43] = 21 ;Z = Y
		_KeyCodes[38] = -1 * Merge(42,51) ;Semicolon = Shift + Comma
	ElseIf Layout == 2 ;AZERTY
		_KeyCodes[15] = 30 ;Q = A
		_KeyCodes[29] = 16 ;A = Q
		_KeyCodes[16] = 44 ;W = Z
		_KeyCodes[43] = 17 ;Z = W
		_KeyCodes[38] = 51 ;Semicolon = Comma
		_KeyCodes[49] = 39 ;M = Semicolon
		_KeyCodes[50] = 50 ;Comma = M
		_KeyCodes[51] = -1 * Merge(42,51) ;Period = Shift + Comma
	EndIf
EndFunction

Float Function GetModVersion()
	Return 1.00
EndFunction


Float Function GetNewVersion()
	Return GetModVersion() + 0.50
EndFunction

Int Function iMin(Int a,Int b)
	If a <= b
		Return a
	EndIf
	Return b
EndFunction

Float Function fMin(Float a,Float b)
	If a <= b
		Return a
	EndIf
	Return b
EndFunction

Int Function iMax(Int a,Int b)
	If a >= b
		Return a
	EndIf
	Return b
EndFunction

Float Function fMax(Float a,Float b)
	If a >= b
		Return a
	EndIf
	Return b
EndFunction

Int Function IsInputInvalid(String s)
	Int l = GetLength(s)
	If l > 30
		Return -1
	EndIf
	String c = ""
	While l > 0
		l -= 1
		c = GetNthChar(s,l)
		If  ( find(keys,c) < 0 )
			Return l + 1
		EndIf
	EndWhile
	Return 0
EndFunction

Int Function getKeyCode(String c)
	Return _KeyCodes[keyCodes[find(keys,c)] - 1]
EndFunction

Int[] Function getKeyCodes(String s)
	Int[] r = New Int[60]
	Int l = GetLength(s)
	Int i = 0
	Int j = 0
	Int[] u
	While i < l
		If j == 60
			Return None
		EndIf
		r[j] = getKeyCode(GetNthChar(s,i))
		If r[j] < 0
			u = Unmerge(r[j] * -1)
			r[j] = u[0] * -1
			r[j + 1] = u[1]
			j += 1
		EndIf
		i += 1
		j += 1
	EndWhile
	Return r
EndFunction

String Function trimInput(String s)
	Int l = GetLength(s)
	Int i = 0
	Int j = l
	If GetNthChar(s,j - 1) == " "
		While j > 0 && GetNthChar(s,j - 1) == " "
			j -= 1
		EndWhile
		If (j == 0)
			s = GetNthChar(s,0)
			If s == " "
				Return ""
			Else
				Return s
			EndIf 
		EndIf
	EndIf
	If GetNthChar(s,i) == " "
		i += 1
		While (i < l - 1) && GetNthChar(s,i) == " "
			i += 1
		EndWhile
	EndIf
	Return Substring(s,i,j)
EndFunction

Function RunCommand(Int[] kCodes)
	Int l = kCodes.length
	Int k
	If l > 0
		Int i = 0
		float delay = MCMScript.fConsoleDelaySlider / 40
		Input.TapKey(_KeyCodes[40]) ;~
		Utility.WaitMenuMode(delay * 2)
		Input.TapKey(_KeyCodes[13]) ;backspace
		Utility.WaitMenuMode(delay)
		While (i < l) && kCodes[i]
			k = kCodes[i]
			If k > -1
				Input.TapKey(k)
			Else
				k *= -1
				Input.HoldKey(k)
				Utility.WaitMenuMode(delay)
				Input.TapKey(kCodes[i + 1])
				Input.ReleaseKey(k)
				i += 1
			EndIf
			i += 1
			Utility.WaitMenuMode(delay)
		EndWhile
		Input.TapKey(_KeyCodes[27]) ;Enter
		Utility.WaitMenuMode(delay)
		Input.TapKey(_KeyCodes[40]) ;~
	EndIf
EndFunction

Int Function Merge( Int x, Int y)
	Return (x * (maxKCode - minKCode)) + y
EndFunction

Int[] Function Unmerge(int v)
	Int[] r = New Int[2]
	r[0] = v / (maxKCode - minKCode)
    r[1] = v % (maxKCode - minKCode)
	Return r
EndFunction

Function RunBat(Int iChar1 = 0,Int iChar2 = 0,Int iChar3 = 0)
	Input.TapKey(_KeyCodes[40]) ;~
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 20)
	Input.TapKey(_KeyCodes[13]) ;backspace
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 40)
	Input.TapKey(_KeyCodes[47]) ;B
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 40)
	Input.TapKey(_KeyCodes[29]) ;A
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 40)
	Input.TapKey(_KeyCodes[19]) ;T
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 40)
	Input.TapKey(_KeyCodes[56]) ;Space
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 40)
	Input.TapKey(_KeyCodes[29]) ;A
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 40)
	Input.TapKey(_KeyCodes[45]) ;C
	If iChar1 > 0
		Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 40)
		Input.TapKey(_KeyCodes[iChar1- 1]) ;
	EndIf
	If iChar2 > 0
		Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 40)
		Input.TapKey(_KeyCodes[iChar2 - 1]) ;
	EndIf
	If iChar3 > 0
		Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 40)
		Input.TapKey(_KeyCodes[iChar3 - 1]) ;
	EndIf
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 40)
	Input.TapKey(_KeyCodes[27]) ;Enter
	Utility.WaitMenuMode(MCMScript.fConsoleDelaySlider / 40)
	Input.TapKey(_KeyCodes[40]) ;~
EndFunction

Bool Function bIsArrEmpty(Int[] arr,Int len = 0)
	If arr
		Int l = arr.Length
		If (len > 0) && (len < l)
			l = len
		EndIf
		Int i = 0
		While i < l
			If arr[i]
				Return False
			EndIf
			i += 1
		EndWhile
	EndIf
	Return True
EndFunction

Bool Function bIsKeyboardKey(Int KeyCode)
	Int i = _KeyCodes.Find(keyCode)
	Return (i > -1) && (i <= 100)
EndFunction

Function RecordControlKeys()
	Int i = 0
	While i < 43
		ControlKeyCode[i] = input.GetMappedKey(ControlName[i])
		i += 1
	EndWhile
EndFunction

String Function GetStandardControl(Int keyCode)
	RecordControlKeys()
	Int i = ControlKeyCode.Find(keyCode)
	If i > -1
		Return ControlName[i]
	EndIf
	Return ""
EndFunction

Function RecordControlNames()
	ControlName = New String[43]
	ControlName[0] = "Activate"
	ControlName[1] = "Auto-Move"
	ControlName[2] = "Back"
	ControlName[3] = "CameraPath"
	ControlName[4] = "Console"
	ControlName[5] = "Favorites"
	ControlName[6] = "Forward"
	ControlName[7] = "Hotkey1"
	ControlName[8] = "Hotkey2"
	ControlName[9] = "Hotkey3"
	ControlName[10] = "Hotkey4"
	ControlName[11] = "Hotkey5"
	ControlName[12] = "Hotkey6"
	ControlName[13] = "Hotkey7"
	ControlName[14] = "Hotkey8"
	ControlName[15] = "Journal"
	ControlName[16] = "Jump"
	ControlName[17] = "Left Attack/Block"
	ControlName[18] = "Look"
	ControlName[19] = "Move"
	ControlName[20] = "Multi-Screenshot"
	ControlName[21] = "Pause"
	ControlName[22] = "Quick Inventory"
	ControlName[23] = "Quick Magic"
	ControlName[24] = "Quick Map"
	ControlName[25] = "Quick Stats"
	ControlName[26] = "Quickload"
	ControlName[27] = "Quicksave"
	ControlName[28] = "Ready Weapon"
	ControlName[29] = "Right Attack/Block"
	ControlName[30] = "Run"
	ControlName[31] = "Screenshot"
	ControlName[32] = "Shout"
	ControlName[33] = "Sneak"
	ControlName[34] = "Sprint"
	ControlName[35] = "Strafe Left"
	ControlName[36] = "Strafe Right"
	ControlName[37] = "Toggle Always Run"
	ControlName[38] = "Toggle POV"
	ControlName[39] = "Tween Menu"
	ControlName[40] = "Wait"
	ControlName[41] = "Zoom In"
	ControlName[42] = "Zoom Out"
EndFunction