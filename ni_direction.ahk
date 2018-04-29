#InputLevel 1
LAlt::NumpadIns
;LWin::LAlt

#InputLevel 0
; Direction
NumpadIns & i::SendInput {blind}{Up}
NumpadIns & k::SendInput {blind}{Down}
NumpadIns & j::SendInput {blind}{Left}
NumpadIns & l::SendInput {blind}{Right}
NumpadIns & u::SendInput {blind}{Home}
NumpadIns & o::SendInput {blind}{End}
NumpadIns & p::SendInput {blind}{PgUp}
NumpadIns & `;::SendInput {blind}{PgDn}
;NumpadIns & o::SendInput {blind}{Home}
;NumpadIns & `;::SendInput {blind}{End}

NumpadIns & d::SendInput {Del}
NumpadIns & s::SendInput {Backspace}

NumpadIns & F4::SendInput !{F4}

NumpadIns & Tab::send {LAlt down}{Tab}
NumpadIns & 1::SendInput {LAlt down}1{LAlt up}
NumpadIns & 2::SendInput !2
NumpadIns & 3::SendInput !3
NumpadIns & 4::SendInput !4
NumpadIns & 5::SendInput !5

; Media
NumpadIns & F11::send {Volume_Up}
NumpadIns & F10::send {Volume_Down}
NumpadIns & F12::send {Volume_Mute}