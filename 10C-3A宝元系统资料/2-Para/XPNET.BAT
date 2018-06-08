@ECHO OFF
if exist c:\dos\ReCON.bat  c:\dos\ReCON.bat 192.168.2.12 255.255.255.0 192.168.2.1
rtspkt 0x60
ntcpdrv -ip=192.168.2.12 -netmask=255.255.255.0 -gateway=192.168.2.1
