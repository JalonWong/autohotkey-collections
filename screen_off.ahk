/*
; Win+Shift+\
#+\ Up::
    Run rundll32.exe user32.dll`,LockWorkStation     ; Lock PC
    ;Sleep 1000
    SendMessage 0x112, 0xF170, 2, , Program Manager  ; Monitor off
    Return
*/

; Win+\
#\ Up::
    SendMessage 0x112, 0xF140, 0, , Program Manager  ; Start screensaver
    Sleep 100
    SendMessage 0x112, 0xF170, 2, , Program Manager  ; Monitor off
    Return