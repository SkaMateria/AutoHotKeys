#Requires AutoHotkey v2.0
#SingleInstance Force
InstallKeybdHook
InstallMouseHook

on := False

CapsLock:: {
  Global on := !on
  SoundBeep 600 + 130 * on
}

;if (on := false) 
  ;{
    ;TrayTip "AutoClicker is ON", "NOTICE:", 4
    ;}
  ;else if (on := true)
    ;{
      ;TrayTip "AutoClicker is OFF", "NOTICE:", 4
    ;}
    ;else
      ;{
        ;TrayTip "I don't know", "Like what?"
      ;}


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

~$F2:: {
  ;insert text into scrcpy
}

F10::ExitApp