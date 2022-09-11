@echo off
echo > CCM.log
cls
:chkupd
del /s /q XZV.txt
del /s /q nowv.txt
echo %date%%time% Open Chkupd>>CCM.log
echo => XZV.txt
echo 10.0_220911>XZV.txt
powershell "(New-Object Net.WebClient).DownloadFile('https://gitee.com/ganteam/CCMautoupd/raw/master/nowv.txt', 'nowv.txt')"
fc nowv.txt xzv.txt
if errorlevel==1 goto upd
echo %date%%time% Done Version Check>>CCM.log
goto shouye1
:mountvol
cls
mountvol c:\ /d
pause
:shutdown
echo %date%%time% Open Std>>CCM.log
cls
shutdown -s -t 1
pause
:reboot
echo %date%%time% Open Reboot>>CCM.log
cls
shutdown -r -t 1
pause
:offinternet
echo %date%%time% Open OffInternet>>CCM.log
cls
netsh interface set interface "以太网" disabled
netsh interface set interface "网络" disabled
netsh interface set interface "WLAN" disabled
netsh interface set interface "WIFI" disabled
pause
:shouye1
del /s /q XZV.txt
del /s /q nowv.txt
cls
title CCM 10.0 现在是北京时间 %date%
color 6F
echo %date%%time% Open Shouye>>CCM.log
echo                                                            选择
echo        1.检查更新 2.关网络 3.HuaRuiKiller Lite  4.关机 5.弹出c盘 6.更新日志 7.网络测压 8.Bat编辑器(试运行) 9.Exit
set /p a=请选择 
if /i '%a%'=='1' goto chkupd
if /i '%a%'=='2' goto offinternet
if /i '%a%'=='3' goto HKLite
if /i '%a%'=='4' goto shutdown
if /i '%a%'=='5' goto mountvol
if /i '%a%'=='6' goto updatelog
if /i '%a%'=='7' goto ddos
if /i '%a%'=='8' goto CCMC19
if /i '%a%'=='9' goto editor
goto shouye1
:updatelog
cls
echo %date%%time% Open UpdLog>>CCM.log
echo 2.0日志
echo 1.0屎山代码 全部重构
echo 使用新逻辑，效率上升50%
echo 3.0日志
echo 傻逼屎山代码根本写不下去 3.0继续优化
echo 4.0日志 名称改为CCM(CloudComputerManager)
echo 5.0日志 代码相比1.0基本全部重构，移除一些容易导致bug的功能
echo 6.0日志缺失
echo 7.0修复一些底层bug
echo 8.0添加功能,打开自动检查更新
pause
goto shouye1
:ddos
echo %date%%time% Open DDOS>>CCM.log
cls
set /p q=输入ip或网址:
:dddstart
echo %date%%time% DDoS Start>>CCM.log
cls
ping %q% -t -l 65500
:editor
exit
:tmonitor
cls
echo %date%%time% OpenTMonitor>>CCM.log
echo 1.性能检测版 2.电脑杀手 
set /p asdsdsdsd=请选择 
if /i '%asdsdsdsd%'=='1' goto smoitor
if /i '%asdsdsdsd%'=='2' goto killerqueen
:smoitor
echo %date%%time% Open Resmon>>CCM.log
resmon
:killerqueen
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t reg_dword /d 00000001 /
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools/tREG_DWORD/d1/f
:upd
echo %date%%time% UpdChose >>CCM.log
cls
echo 有新版本更新!
echo 请选择源
set /p asdsdsdsd=1.github源 2.gitee源
if /i '%asdsdsdsd%'=='1' goto huby
if /i '%asdsdsdsd%'=='2' goto eey
goto upd
:huby
cls
powershell "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Djrrv/CCM/main/main.bat', 'main.bat')"
echo %date%%time% Dl Upd From Github >>CCM.log
goto shouye1
:eey
powershell "(New-Object Net.WebClient).DownloadFile('https://gitee.com/ganteam/CCMautoupd/raw/master/main.bat', 'main.bat')"
echo %date%%time% Dl Upd From Gitee >>CCM.log
goto shouye1
:HKLite
echo %date%%time% Open HKLite>>CCM.log
:ma
cls
taskkill /f /im RedAgent.exe
goto ma
:CCMC19
cls
echo %date%%time% Open Test Function>>CCM.log
title Bat Editor
echo 欢迎来到bat编辑器
echo 是否查看之前项目?
set /p akk= 1=是 2=不是
if /i '%akk%'=='1' goto newproject
if /i '%akk%'=='2' goto findproject
:findproject
cls
echo 此功能开发中!
goto newproject
:newproject
cls
echo 请命名您的项目
set /p projectname= 在此输入项目名
echo @echo off>%projectname%.bat
:startedit
cls
echo 您现在要做什么?
set /p aakk= 1.说一句话 2.华锐杀手功能包 3.加入选择 4.定义功能
if /i '%aakk%'=='1' goto sayec
if /i '%aakk%'=='2' goto hkgnb
if /i '%aakk%'=='3' goto addchoice
if /i '%aakk%'=='4' goto addfunction
:sayec
echo %date%%time% Open Batedit/sayec>>CCM.log
echo 您要说什么?
set /p awakk= 
echo echo %awakk%>>%projectname%.bat
echo Done!
pause
goto startedit
:hkgnb
echo %date%%time% Open Batedit/HKgnb>>CCM.log
echo 这将添加华锐杀手的功能到您的项目里，确定吗？
pause
echo :ma>>%projectname%.bat
echo cls>>%projectname%.bat
echo taskkill /f /im RedAgent.exe>>%projectname%.bat
echo goto ma>>%projectname%.bat
echo %date%%time% Done>>CCM.log
echo Done
pause
goto startedit
:addchoice
echo %date%%time% Open Batedit/Addchoice>>CCM.log
echo 您要问什么?
set /p Ques= 
echo 您的变量名?
set /p Bname= 
echo set /p %Bname%= %Ques%>>%projectname%.bat
echo 用户输入?
set /p pand1= 
echo 返回结果？
echo 返回结果应该是?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= 输入要说的话
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo 你 要去哪?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
:asking
echo 是否需要在添加一个判断？
set /p aakk= 1.Yes 2.No
if /i '%aakk%'=='1' goto EYES
if /i '%aakk%'=='2' goto ENOS
:EYES
echo 用户输入?
set /p pand1= 
echo 返回结果？
echo 返回结果应该是?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= 输入要说的话
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo 你 要去哪?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
goto asking
goto ENOS
:ENOS
echo %date%%time% Done>>CCM.log
echo Done
pause
goto startedit
:addfunction
echo %date%%time% Open Batedit/Addfunction>>CCM.log
echo 请输入你要叫这个功能的名字。
set /p funame= 
echo :%funame%>>%projectname%.bat
echo %date%%time% Done>>CCM.log
echo Done
pause
goto startedit
