#MaxHotkeysPerInterval 200

CapsLock::LCtrl
LCtrl::CapsLock

#UseHook
; LAlt + IJKL 方向键
ComboKey(key)
{
    if GetKeyState("Ctrl")
        key := "^" + key
    
    if GetKeyState("Shift")
        key := "+" + key
    
    send %key%
}

*<!i::ComboKey("{Up}")
*<!k::ComboKey("{Down}")
*<!l::ComboKey("{Right}")
*<!j::ComboKey("{Left}")
*<!u::ComboKey("{Home}")
*<!o::ComboKey("{End}")
#UseHook off

<!p::send {PgUp}
<!`;::send {PgDn}
<!d::send {Del}
<!s::send {Backspace}

; Number
;^9::SendInput {NumpadDot}
~0 & 9::SendInput {Backspace}{NumpadDot}

; Win+\    
#\ Up::
    SendMessage 0x112, 0xF140, 0, , Program Manager  ; Start screensaver
    Sleep 500
    SendMessage 0x112, 0xF170, 2, , Program Manager  ; Monitor off
    Return
