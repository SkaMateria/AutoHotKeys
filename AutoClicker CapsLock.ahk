#Requires AutoHotKey v2.0
#SingleInstance Force
InstallKeybdHook
InstallMouseHook

on := False

CapsLock:: {
  Global on := !on
  SoundBeep, 1000 + 500 * on
}
#HotIf on
~#Lbutton:: {
  While GetKeyState("LButton", "P") {
    Click ("D")
    Sleep(20)
    Click ("U")
    Sleep(180)
  }
}
#HotIf

F10:: ExitApp