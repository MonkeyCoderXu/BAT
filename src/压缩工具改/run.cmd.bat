@echo off
:: ����ѹ��JS�ļ��ĸ�Ŀ¼���ű����Զ�������β��Һ�ѹ�����е�JS

echo ��ǰĿ¼�ǣ�%cd%

echo ���ڲ���JS�ļ�

:: ���ò���JS��·����Ĭ���ڵ�ǰfolder�½��в���
SET JSFOLDER=.\test

chdir /d %JSFOLDER%

for /r . %%b in (*.min.js) do (
	@echo %%~nb.js
	del %%~nb.js
  )

for /r . %%a in (*.js) do (
    @echo ����ѹ�� %%~a ...
   call  %~dp0/nodejs/uglifyjs %%~fa -cmo "%%~dpna".min.js
	
)

 @echo "ALL DONE!!!"

 pause & exit