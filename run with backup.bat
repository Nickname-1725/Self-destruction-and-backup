
@cd /d %~dp0
::������·������Ϊ�ű�����·��
::cd �����л�Ŀ¼
::/d �������̷�, �����л�
::%0 ����������ű�����
::~dp�Ǳ�������: d�������, p����·��


@set flag=0
:: ���ò���
:: �Ⱥ����Ҳ��ɴ��ڿո�
@for %%i in (run\*) do @set flag=1
@if %flag% == 0 (@echo Err: run Uprepared! & @pause & exit)
:: ���ݱ�ʶ���ж�run �Ƿ�Ϊ��. 
:: ��Ϊ���򲻿�������Ŀ.


@xcopy run backup /y > null
:: /y ��ʾ�����ļ�
:: ������Ѹ���n���ļ�����ʾ, 
:: ����ת����ʾд���λ��, ���ɾ��null


@call run\main.bat
cd /d %~dp0


del null
