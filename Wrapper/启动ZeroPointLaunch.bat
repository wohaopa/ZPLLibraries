@echo off
set cwd=%~dp0
chcp 65001>nul
title GTNHLauncher by 初夏同学

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
echo 本程序需要使用管理员权限来完成文件链接的创建。本程序完全开源，不存在其他操作行为。

echo 请以管理员权限运行！

echo 按任意退出程序

pause>nul
exit
) else ( goto gotAdmin )

:gotAdmin

cd /d %cwd%
java -Dfile.encoding=utf8 -jar Wrapper-1.0-SNAPSHOT.jar %*

echo 按任意键退出
pause>nul
