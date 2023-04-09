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
      Sleep(Random(25, 43))
      Click ("U")
      Sleep(Random(159, 215))
    }
}
#HotIf

F10::ExitApp