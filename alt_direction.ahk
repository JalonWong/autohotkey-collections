#Requires AutoHotkey v2.0

#UseHook
; LAlt + IJKL Direction
ComboKey(key) {
    if GetKeyState("Ctrl") {
        key := "^" key
    }

    if GetKeyState("Shift") {
        key := "+" key
    }

    send(key)
}

*<!i::ComboKey("{Up}")
*<!k::ComboKey("{Down}")
*<!l::ComboKey("{Right}")
*<!j::ComboKey("{Left}")
*<!u::ComboKey("{Home}")
*<!o::ComboKey("{End}")
#UseHook False

<!p::send("{PgUp}")
<!`;::send("{PgDn}")
<!d::send("{Del}")
<!s::send("{Backspace}")
