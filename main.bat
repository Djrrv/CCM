::�ͼ�����Batд��
::������Լ��ʺ�����ѧϰ
::������β���д�����
@echo off
set version=CCM 14.1.0 QWDNTAO
set buildtype=Stable
set coreversion=13.0.1.0 EACABYQ
:startofccm
echo ���Ǹ������û�Э��
::������Ҫ�ҽ����� �û�Э��
set /p aqqa=1 �鿴�û�Э�� 2 ͬ���û�Э�� ��ͬ���û�Э����ֱ�����Ͻ��˳�
if /i '%aqqa%'=='1' goto chkuserguide
if /i '%aqqa%'=='2' goto chkupdif
:chkupdif
echo �����Ҫʹ�ù����� ���Ҽ�����Ա���У��������Զ���Ȩ
echo �Ƿ���Ҫ�����£�
::������Ҫ�ҽ����� �Ƿ������
set /p aqq=1 �� 2 ���� û��ʱ��������
if /i '%aqq%'=='1' goto chkupd
if /i '%aqq%'=='2' goto shouyeone
cls
:chkupd
del /s /q XZV.txt
del /s /q nowv.txt
::ɾ��ԭ��CCM10.0���²����ļ�
echo => XZV.txt
echo 12.0_220929>XZV.txt
powershell "(New-Object Net.WebClient).DownloadFile('https://gitee.com/ganteam/CCMautoupd/raw/master/nowv.txt', 'nowv.txt')"
fc nowv.txt xzv.txt
::���ز��ԱȰ汾��
if errorlevel==1 goto upd
::��һ����ת������ҳ��
goto shouye1
:mountvol
cls
mountvol c:\ /d
pause
:shutdown
:choiceofstd
cls
echo �Ƿ�ʹ���·���?
set /p aqqq=1 �� 2 ����
if /i '%aqqq%'=='1' goto newfa
if /i '%aqqq%'=='2' goto oldfa
echo Error
goto choiceofstd
:oldfa
shutdown -s -t 1
pause
:newfa
cls
sildetoshutdown
pause
:reboot
cls
shutdown -r -t 1
pause
:offinternet
cls
::�ر�������������
netsh interface set interface "��̫��" disabled
netsh interface set interface "����" disabled
netsh interface set interface "WLAN" disabled
netsh interface set interface "WIFI" disabled
netsh interface set interface "��������" disabled
pause
:shouye1
::���ٽ���
del /s /q XZV.txt
del /s /q nowv.txt
cls
title %version% ��������Ȩ�� �����Ǳ���ʱ�� %date%
color 6F
echo                                                            ѡ��
echo        1.������ 2.С��Ϸ 3.HuaRuiKiller Lite  4.�ػ� 5.����c�� 6.������־ 7.�����ѹ 8.Bat�༭��(������) 9.һ���Ӽ������ 10.�鿴�汾�� X.�˳�
set /p a=��ѡ�� 
if /i '%a%'=='1' goto chkupd
if /i '%a%'=='2' goto wuziqi
if /i '%a%'=='3' goto HKLite
if /i '%a%'=='4' goto shutdown
if /i '%a%'=='5' goto mountvol
if /i '%a%'=='6' goto updatelog
if /i '%a%'=='7' goto ddos
if /i '%a%'=='8' goto CCMC19
if /i '%a%'=='9' goto FuckFbx
if /i '%a%'=='X' goto editor
if /i '%a%'=='10' goto chkondev
goto shouye1
:updatelog
cls
echo 2.0��־
echo 1.0ʺɽ���� ȫ���ع�
echo ʹ�����߼���Ч������50%
echo 3.0��־
echo ʺɽ�������д����ȥ 3.0�����Ż�
echo 4.0��־ ���Ƹ�ΪCCM(CloudComputerManager)
echo 5.0��־ �������1.0����ȫ���ع����Ƴ�һЩ���׵���bug�Ĺ���
echo 6.0��־ȱʧ
echo 7.0�޸�һЩ�ײ�bug
echo 8.0��ӹ���,���Զ�������
echo 9.0-10.0 ���Bat�༭��
echo Xeon�汾��Ӷ��ֹ���
echo 12.0 ���Ż�����Ϊ�� ȥ����һЩ���ù����Լ��ӿ�
pause
goto shouye1
:ddos
cls
set /p q=����ip����ַ:
:dddstart
::����֮ping
cls
ping %q% -t -l 65500
:editor
exit
:tmonitor
cls
echo 1.���ܼ��� 2.����ɱ�� 
set /p asdsdsdsd=��ѡ�� 
if /i '%asdsdsdsd%'=='1' goto smoitor
if /i '%asdsdsdsd%'=='2' goto killerqueen
:smoitor
resmon
:killerqueen
::���������������ע���
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t reg_dword /d 00000001 /
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools/tREG_DWORD/d1/f
:upd
cls
echo ���°汾����!
echo ��ѡ��Դ
set /p asdsdsdsd=1.githubԴ 2.giteeԴ
if /i '%asdsdsdsd%'=='1' goto huby
if /i '%asdsdsdsd%'=='2' goto eey
goto upd
:huby
cls
::��github����
powershell "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Djrrv/CCM/main/main.bat', 'main.bat')"
goto shouye1
:eey
::��gitee����
powershell "(New-Object Net.WebClient).DownloadFile('https://gitee.com/ganteam/CCMautoupd/raw/master/main.bat', 'main.bat')"
goto shouye1
:HKLite
:ma
cls
::����ɱ���̴���killcsΪ0
set  killcs=0
:startkill
echo ��%killcs%��ɱ����!
taskkill /f /im RedAgent.exe
::ɱ���̳ɹ�������+1
set /a killcs+=1
::���ؿ�ʼɱ����
goto startkill
:CCMC19
cls
title Bat Editor
echo ��ӭ����bat�༭��
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
echo ��Ҫ˵ʲô?
set /p awakk= 
echo echo %awakk%>>%projectname%.bat
echo Done!
pause
goto startedit
:hkgnb
echo �⽫��ӻ���ɱ�ֵĹ��ܵ�������Ŀ�ȷ����
pause
echo :ma>>%projectname%.bat
echo cls>>%projectname%.bat
echo taskkill /f /im RedAgent.exe>>%projectname%.bat
echo goto ma>>%projectname%.bat
echo Done
pause
goto startedit
:addchoice
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
echo Done
pause
goto startedit
:addfunction
echo ��������Ҫ��������ܵ����֡�
set /p funame= 
echo :%funame%>>%projectname%.bat
echo Done
pause
goto startedit
:shouyeone
goto shouye1
:FuckFbx
title auto-fuck-fbx
cls
echo ��ѡ�����ģʽ���޵�ģʽ
echo ����ģʽֻʹ�þɰ滪��ɱ�ַ������޵�ģʽָʹ�ö�����ʽ���ﵽ�Ի����һ��������
echo ����Ҳ�Ƽ�ʹ��ProgramKiller ���κΰ汾��HuaRuiKiller������Ч��������С����ʦ�����ȡ���Ч���ܴﵽ���·���������
echo ����1ѡ�����ģʽ ����2ѡ���޵�ģʽ ����3һ���ָ�����
set /p aqq1=
if /i '%aqq1%'=='1' goto HKLite
if /i '%aqq1%'=='2' goto offinternet1
if /i '%aqq1%'=='3' goto oninternet1
:offinternet
cls
::��󰡲��ǹر�������������
netsh interface set interface "��̫��" disabled
netsh interface set interface "����" disabled
netsh interface set interface "WLAN" disabled
netsh interface set interface "WIFI" disabled
netsh interface set interface "��������" disabled
echo ���������ѶϿ���
pause
goto shouye1
:oninternet1
::�ָ���������
netsh interface set interface "��̫��" enabled
netsh interface set interface "����" enabled
netsh interface set interface "WLAN" enabled
netsh interface set interface "WIFI" enabled
netsh interface set interface "��������" enabled
echo �Ѿ��ָ�!
pause
goto shouye1
:wuziqi
@echo off&setlocal enabledelayedexpansion
set li0=������������������������������������������
set li1=�����ЩЩЩЩЩЩЩЩЩЩЩЩЩЩЩЩЩ���1
for /l %%a in (2,1,18) do (set li%%a=����������������������ȩ�%%a)
set li19=�����ةةةةةةةةةةةةةةةةة���19
set li20=������������������������������������������
set li21=   A B C D E F G H I J K L M N O P Q R S
for %%a in (%li21%) do (set/a .+=1,%%a=.&set z!.!=%%a)
set z0= &set z20= &set "z21= "

set li5=!li5!   �� �� �� �� �� �� ս
set li7=!li7!        �� �� ��
set li9=!li9!   �� �� ˮ ƽ �� ��
set li12=!li12!  �� netbenton ��д���
set li14=!li14!  ������Ʋ����� batman
title   ������������


set str=###################
set .=0
for /l %%a in (1,1,19) do (
        set he%%a=!str!&set sh%%a=!str!
        for /l %%b in (1,1,19) do set [%%a.%%b=0
)

set .=33
for /l %%a in (5,1,19) do (
        set pi%%a=!str:~,%%a!&set ni%%a=!str:~,%%a!
        set pi!.!=!str:~,%%a!&set ni!.!=!str:~,%%a!
        set/a .-=1
)


set ��=��&set a��=����
set ��=��&set a��=���

::���õ���IQ
set idea=@@@@#1 #@@@@5 @#@@@4 @@@#@2 @@#@@3 $#$$$4 $$#$$3 $$$#$2 $$$$#1 #$$$$5 #$$#$#3 #$#$$#4 #@@@##2 ##@@@#5 #@@#@#3 #@#@@#4 #@@@#1
set idea=!idea! ##@@@4 @@@##2 ##$$$#5 #$$$##2 #$$$#1 ##@@#4 #@@##2 ##$$#4 #$$##2 #$#$#3 @@###3 ###@@3
set idea=!idea! ##@##2 ###@#3 #@###3 @####4 ####@2 ##############7 ###########6 ########4 #####3 ####2
set ttr=!idea:@=��!&set ttr=!ttr:$=��!
for %%a in (!ttr!) do (set var=%%a&set !var:~,-1!=!var:~-1!&set idea=!idea! !var:~,-1!)
set ttr=
::���õ���IQ

:restart
for /l %%a in (0,1,21) do (echo    !z%%a!!li%%a!)
setlocal enabledelayedexpansion
set li21=!li21!      reboot���¿�ʼ,exit�˳���
set /p var=ѡ��˭����[ W,���  D,����  Q,�˳� ]:
if /i "!var!" equ "Q" goto :eof
if /i "!var!" equ "W" (set zhi=��) else (set zhi=��)
echo.


:loop
if %zhi% equ �� goto :men
set .=&set put1=
for %%a in (!idea!) do (
        for %%b in (he sh) do (
                for /l %%c in (1,1,19) do (
                        if "!%%b%%c:%%a=!" neq "!%%b%%c!" set/a .+=1&set put!.!=%%b %%c
        )        )
        for %%b in (pi ni) do (
                for /l %%c in (5,1,33) do (
                        if "!%%b%%c:%%a=!" neq "!%%b%%c!" set/a .+=1&set put!.!=%%b %%c
        )        )
if defined put1 set put=%%a&goto :get
)

echo. �Ѿ�������
pause
goto :restart

:men
for /l %%a in (0,1,21) do (echo    !z%%a!!li%%a!)
set /p user=[��ǰ���к�]:
echo.
if "!user!" equ "reboot" endlocal&goto :restart
if "!user!" equ "exit" exit
set/a pos=!user:~0,1!,poh=!user:~1,2!,var=pos-1 2>nul
if not defined [!poh!.!pos! echo ����㲻����&goto :men
if "!he%poh%:~%var%,1!" neq "#" echo �õ��Ѿ�����&goto men
goto :getok

:get
set /a .=!random!%%.+1
set put=!put%.%! !put!
::���ȡ��ѵ��߷�

for /f "tokens=1-3" %%a in ("%put%") do (
        set var=!%%a%%b:*%%c=!srqponmlkjihgfedcba0
        set/a var=!var:~19,1!+%%c
        if "%%a" equ "he" (set/a poh=%%b,pos=20-var)
        if "%%a" equ "sh" (set/a poh=20-var,pos=%%b)
        if %%b lss 19 (set/a var=%%b-var+1) else (set/a var=38-%%b-var+1)
        if "%%a" equ "pi" (if %%b lss 19 (set/a pos=var,poh=%%b-var+1) else (set/a poh=20-var,pos=%%b-19+var))
        if "%%a" equ "ni" (if %%b lss 19 (set/a pos=var,poh=19-%%b+var) else (set/a poh=var,pos=%%b-19+var))
)
echo  ����������ڣ�!z%pos%!!z%poh%!(%poh%)

:getok
set zhi=!%zhi%!&set win=!zhi!!zhi!!zhi!!zhi!!zhi!
set/a piph=poh+pos-1,lips=pos+1,niph=19+pos-poh

if !piph! lss 19 (set/a pips=pos) else (set/a pips=20-poh)
if !niph! lss 19 (set/a nips=pos) else (set/a nips=poh)


for %%a in ("li!poh! !lips!" "he!poh! !pos!" "sh!pos! !poh!" "pi!piph! !pips!" "ni!niph! !nips!") do (
        for /f "tokens=1,2" %%b in (%%a) do (
                if defined %%b (
                        set/a .=%%c-1
                        for %%d in (!.!) do (set %%b=!%%b:~0,%%d!%zhi%!%%b:~%%c!)
                if "!%%b:%win%=!" neq "!%%b!" set win=y
                )
        )
)
set/a asc%zhi%+=1
if !win! neq y goto :loop
for /l %%a in (0,1,21) do (echo    !z%%a!!li%%a!)
set/p=   !a%zhi%! %zhi%�� ��!asc%zhi%!��  ʤ��     <nul
pause
endlocal&goto :restart
:chkuserguide
cls
echo �û�Э��
echo 1.�������Ϊ�����Լ������������ã���ֹһ��δ���йز������������
echo 2.�������Ȩ����KFTeam LLC. ������ο�github�еĶ���Э��
echo 3.˵���ˣ�����������Ҹ�����˲�������
pause
goto startofccm
:chkondev
cls
echo    __________   __________   ___      __
echo    /        /   /        /   /  \    /   \
echo   /   -------   /   -------   / / \ \  / /\  \
echo   /   /       /   /        / /   \_\/_/  \  \
echo  /   /______ /   /_______  / /           \  \
echo  /__________/___________/ /_/             \__\
echo CCM �ڲ������汾
echo ��ǰ�汾�� %version%
echo ����ʱ�� %builddate%
echo �ں� %coreversion%
echo �ں˰汾 %buildtype%
echo 
pause
goto shouye1
