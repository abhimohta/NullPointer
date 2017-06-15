set $drive=%1
set $sdxRoot=%~2
set $modPath=%~3
set $cmd=%4
set $arg=%~5
set $timestamp=%6
set $taskId=%7
set SDV=E:\os\src\tools\analysis\x86\sdv
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0"\Common7\Tools\VsDevCmd.bat
call %$drive%
call cd "%$modPath%"
call C:\Users\t-abmo\Desktop\RahulSMV\smv\%$cmd% %$arg%>log-output-%$timestamp%-%$taskId%.txt 2>log-error-%$timestamp%-%$taskId%.txt
exit