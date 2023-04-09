#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook
InstallMouseHook

on := False

CapsLock:: {
  Global on := !on
  SoundBeep 600 + 130 * on
}

#HotIf on
~$LButton:: { 
    While GetKeyState("LButton", "P") {
      Click ("D")
      Sleep(Random(31, 58))
      Click ("U")
      Sleep(Random(175, 216))
    }
}
#HotIf

~$F1:: {
  ;Clickdrag using relative window
}

F10::ExitApp