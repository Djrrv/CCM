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
netsh interface set interface "��̫��" disabled
netsh interface set interface "����" disabled
netsh interface set interface "WLAN" disabled
netsh interface set interface "WIFI" disabled
pause
:shouye1
del /s /q XZV.txt
del /s /q nowv.txt
cls
title CCM 10.0 �����Ǳ���ʱ�� %date%
color 6F
echo %date%%time% Open Shouye>>CCM.log
echo                                                            ѡ��
echo        1.������ 2.������ 3.HuaRuiKiller Lite  4.�ػ� 5.����c�� 6.������־ 7.�����ѹ 8.Bat�༭��(������) 9.Exit
set /p a=��ѡ�� 
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
echo 2.0��־
echo 1.0ʺɽ���� ȫ���ع�
echo ʹ�����߼���Ч������50%
echo 3.0��־
echo ɵ��ʺɽ�������д����ȥ 3.0�����Ż�
echo 4.0��־ ���Ƹ�ΪCCM(CloudComputerManager)
echo 5.0��־ �������1.0����ȫ���ع����Ƴ�һЩ���׵���bug�Ĺ���
echo 6.0��־ȱʧ
echo 7.0�޸�һЩ�ײ�bug
echo 8.0��ӹ���,���Զ�������
pause
goto shouye1
:ddos
echo %date%%time% Open DDOS>>CCM.log
cls
set /p q=����ip����ַ:
:dddstart
echo %date%%time% DDoS Start>>CCM.log
cls
ping %q% -t -l 65500
:editor
exit
:tmonitor
cls
echo %date%%time% OpenTMonitor>>CCM.log
echo 1.���ܼ��� 2.����ɱ�� 
set /p asdsdsdsd=��ѡ�� 
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
echo ���°汾����!
echo ��ѡ��Դ
set /p asdsdsdsd=1.githubԴ 2.giteeԴ
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
echo ��ӭ����bat�༭��
echo �Ƿ�鿴֮ǰ��Ŀ?
set /p akk= 1=�� 2=����
if /i '%akk%'=='1' goto newproject
if /i '%akk%'=='2' goto findproject
:findproject
cls
echo �˹��ܿ�����!
goto newproject
:newproject
cls
echo ������������Ŀ
set /p projectname= �ڴ�������Ŀ��
echo @echo off>%projectname%.bat
:startedit
cls
echo ������Ҫ��ʲô?
set /p aakk= 1.˵һ�仰 2.����ɱ�ֹ��ܰ� 3.����ѡ�� 4.���幦��
if /i '%aakk%'=='1' goto sayec
if /i '%aakk%'=='2' goto hkgnb
if /i '%aakk%'=='3' goto addchoice
if /i '%aakk%'=='4' goto addfunction
:sayec
echo %date%%time% Open Batedit/sayec>>CCM.log
echo ��Ҫ˵ʲô?
set /p awakk= 
echo echo %awakk%>>%projectname%.bat
echo Done!
pause
goto startedit
:hkgnb
echo %date%%time% Open Batedit/HKgnb>>CCM.log
echo �⽫��ӻ���ɱ�ֵĹ��ܵ�������Ŀ�ȷ����
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
echo ��Ҫ��ʲô?
set /p Ques= 
echo ���ı�����?
set /p Bname= 
echo set /p %Bname%= %Ques%>>%projectname%.bat
echo �û�����?
set /p pand1= 
echo ���ؽ����
echo ���ؽ��Ӧ����?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= ����Ҫ˵�Ļ�
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo �� Ҫȥ��?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
:asking
echo �Ƿ���Ҫ�����һ���жϣ�
set /p aakk= 1.Yes 2.No
if /i '%aakk%'=='1' goto EYES
if /i '%aakk%'=='2' goto ENOS
:EYES
echo �û�����?
set /p pand1= 
echo ���ؽ����
echo ���ؽ��Ӧ����?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= ����Ҫ˵�Ļ�
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo �� Ҫȥ��?
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
echo ��������Ҫ��������ܵ����֡�
set /p funame= 
echo :%funame%>>%projectname%.bat
echo %date%%time% Done>>CCM.log
echo Done
pause
goto startedit
