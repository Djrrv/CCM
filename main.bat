@echo off
cls
:chkupd
echo => XZV.txt
echo 8.0_220831_2>XZV.txt
powershell "(New-Object Net.WebClient).DownloadFile('https://gitee.com/ganteam/CCMautoupd/raw/master/nowv.txt', 'nowv.txt')"
fc nowv.txt xzv.txt
if errorlevel==1 goto upd
goto shouye1
:mountvol
cls
mountvol c:\ /d
pause
:shutdown
cls
shutdown -s -t 1
pause
:reboot
cls
shutdown -r -t 1
pause
:offinternet
cls
netsh interface set interface "以太网" disabled
netsh interface set interface "网络" disabled
netsh interface set interface "WLAN" disabled
netsh interface set interface "WIFI" disabled
pause
:shouye1
cls
title CCM 22.8.31Beta 现在是北京时间 %date%
color 6F
echo                                                            选择
echo        1.检查更新 2.关网络 3.实验室  4.关机 5.弹出c盘 6.更新日志 7.网络测压 8.退出 9.内测入口
set /p a=请选择 
if /i '%a%'=='1' goto chkupd
if /i '%a%'=='2' goto offinternet
if /i '%a%'=='3' goto firstpage
if /i '%a%'=='4' goto shutdown
if /i '%a%'=='5' goto mountvol
if /i '%a%'=='6' goto updatelog
if /i '%a%'=='7' goto ddos
if /i '%a%'=='8' goto editor
if /i '%a%'=='9' goto testing
goto shouye1
:updatelog
cls
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
cls
set /p q=输入ip或网址:
:dddstart
cls
ping %q% -t -l 65500
:editor
exit
:testing
cls
echo Please Type Code Here To Unlock
set /p edf=
if /i '%edf%'=='10010' goto tmonitor
echo 输入错
pause
exit
:tmonitor
cls
echo 1.性能检测版 2.电脑杀手 
set /p asdsdsdsd=请选择 
if /i '%asdsdsdsd%'=='1' goto smoitor
if /i '%asdsdsdsd%'=='2' goto killerqueen
:smoitor
::fbxwcnm，不想写了
resmon
:killerqueen
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t reg_dword /d 00000001 /
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools/tREG_DWORD/d1/f
:upd
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
echo 下载完成!请手动打开。
pause
exit
:eey
powershell "(New-Object Net.WebClient).DownloadFile('https://gitee.com/ganteam/CCMautoupd/raw/master/main.bat', 'main.bat')"
echo 下载完成!请手动打开。
pause
exit
