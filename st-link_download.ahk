#MaxHotkeysPerInterval 200

RunFlag := false
MyText =
TitleText =

Test()
{
    global RunFlag
    global MyText
    global TitleText
    
    Gui, new, +AlwaysOnTop -MinimizeBox, �Զ�����  ; +Owner ������ʾ��������ť.
    Gui, Add, Text,, STM32 �̼������Զ������ű��������С��رոô�����ֹͣ��
    Gui, Add, Text, vMyText, State: 0
    Gui, Add, Text, vTitleText w400,
    Gui, Show, NoActivate w400 h100 x100 y100 ; NoActivate �õ�ǰ����ڼ������ֻ״̬.
    
    RunFlag := true
    downFlag := false
    startFlag := false
    
    while RunFlag
    {
        hwnd := WinActive("ahk_exe STM32 ST-LINK Utility.exe")
        if (hwnd)
        {
            WinGetTitle, title, ahk_id %hwnd%
            
            GuiControl, , MyText, State: 1
            GuiControl, , TitleText, Title: %title%
            
            if (title == "Error")
            {
                GuiControl, , MyText, State: 2
                send {Return}
                
                startFlag := false
            }
            else if (InStr(title,"Download"))
            {
                GuiControl, , MyText, State: 3
                send {Down}{Return}
                
                downFlag := true
                startFlag := false
            }
            else if (title == "STM32 ST-LINK Utility" && !startFlag)
            {
                if (downFlag)
                {
                    downFlag := false
                    Sleep 2000
                }
                
                send ^p
                startFlag := true
            }
        }
        else
        {
            GuiControl, , MyText, State: 0
            GuiControl, , TitleText,
        }
        
        Sleep 500
    }
    ;MsgBox �ű�ֹͣ�� 
    Return
}

GuiClose(GuiHwnd) 
{
    global RunFlag
    RunFlag := false
}


>^\::Test()
>^]::send {Return}
