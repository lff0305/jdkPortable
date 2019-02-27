A simple script to extract the jdk installer without install it.

Usage:

Put the script (install.cmd), 7z tool (7z.exe) and jdk installer (jdk-xxx-windows-x64.exe) under same folder, 
and run install.cmd. That's all.

Currently the following installers are supported:
- jdk-8u201-windows-x64.exe
- jdk-8u181-windows-x64.exe
- jdk-8u171-windows-x64.exe

You may need to add `./bin/` folder to PATH environment variable manually and update the `JAVA_HOME`/`JDK_HOME` environment variable.


**For JDK 11, Oracle has provided .zip package finally, so no need for this script**
