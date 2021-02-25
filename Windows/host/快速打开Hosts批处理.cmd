chcp 65001
@ECHO OFF
mode con cols=38 lines=20
TITLE 修改hosts文件
color 2F
%Windir%\System32\FLTMC.exe >nul 2>&1 || (
    ECHO CreateObject^("Shell.Application"^).ShellExecute "%~f0", "%PAR1st%", "", "runas", 1 > "%TEMP%\AdminRun.vbs"
    ECHO CreateObject^("Scripting.filesystemobject"^).DeleteFile ^(WScript.ScriptFullName^) >> "%TEMP%\AdminRun.vbs"
    %Windir%\System32\CSCRIPT.exe //Nologo "%TEMP%\AdminRun.vbs"
    Exit /b
)
ECHO Hosts文件已经打开，您现在可以进行编辑，修改完成后请保存
notepad "%SystemRoot%\system32\drivers\etc\hosts"
exit