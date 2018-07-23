@ echo off

echo 'Extracting .exe file...'
set found="0"
if exist jdk-8u181-windows-x64.exe (
set found="1"
echo found jdk-8u171-windows-x64.exe
7z x jdk-8u181-windows-x64.exe
)
if exist jdk-8u171-windows-x64.exe (
set found="1"
echo found jdk-8u171-windows-x64.exe
7z x jdk-8u171-windows-x64.exe
)
if %found% == "0" (
    echo JDK Installer not found. Exit.
    goto :EXT
)
echo 'Extracting tools.zip from CAB...'
7z x .rsrc\1033\JAVA_CAB10
echo 'Extracting tools.zip...'
7z x tools.zip
cd jre/lib
echo 'Extracting .pack to .jar...'
for /r %%x in (*.pack) do ..\..\bin\unpack200 -r "%%x" "%%~dx%%~px%%~nx.jar"
cd ..
cd ..
cd lib 
echo 'Extracting tools.pack to tools.jar...'
..\bin\unpack200.exe tools.pack tools.jar
cd ..
echo 'Extracting src.zip for source code...'
7z x .rsrc\1033\JAVA_CAB9\110

echo Remove unused files....
rmdir /s /q .rsrc
del /f /s /q .data
del /f /s /q .rsrc
del /f /s /q .pdata
del /f /s /q .rdata
del /f /s /q .reloc
del /f /s /q .text
del /f /s /q CERTIFICATE
del /f /s /q LICENSE
del /f /s /q README.html
del /f /s /q release

echo 'Done. Please set/update JDK_HOME and PATH variables.'

:EXT

