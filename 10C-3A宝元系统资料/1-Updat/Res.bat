@echo off

SET LNCVER=PROGRAM

ECHO Restore system %LNCVER%.B2 to %LNCVER%
ECHO Please wait...
C:
CD\
if not exist C:\%LNCVER%.B2\EXIST.DIR GOTO B2NEXIST
move /y C:\%LNCVER%\NCFILES\*.* C:\%LNCVER%.B2\NCFILES\ >NUL
move /y C:\%LNCVER%\CAMPRJ\*.* C:\%LNCVER%.B2\CAMPRJ\ >NUL
deltree /Y C:\%LNCVER%.bad >NUL
move %LNCVER% %LNCVER%.bad >NUL
move %LNCVER%.b2 %LNCVER% >NUL
reset.com >NUL

:B2NEXIST
 ECHO %LNCVER%.b2 DIR NOT EXIST

:END
