@ECHO OFF
 REM LAST MODIFY  2007/03/20 14:30
 SET ROOT=PROGRAM

 PATH C:\;C:\DOS;C:\MLC;C:\NET;C:\PCSCAN;C:\%ROOT%\EXE;

 if exist c:\dos\osver.bat  call c:\dos\osver.bat
 if not exist c:\dos\osver.bat  if exist c:\DOS\Backup.BAT  set OS_VER=G5.2
 if not exist c:\DOS\Backup.BAT  if exist c:\net\FNetCard.BAT  set OS_VER=G5.0
 if not exist c:\net\FNetCard.BAT  if exist c:\dos\mountusb.bat  set OS_VER=G4.0
 if not exist c:\dos\mountusb.bat  set OS_VER=L4.0

 if exist c:\net\FNetCard.BAT  call c:\net\FNetCard.BAT

 rem if exist c:\dos\mountusb.bat  call mountusb.bat > nul

 if EXIST C:\tmp.bat  del tmp.bat>nul
 Deltree /y C:\update>nul

 CLS
 ECHO.
 ECHO.
 ECHO  SYSTEM STARTING ......

 CD\%ROOT%\EXE
 CALL R.BAT
