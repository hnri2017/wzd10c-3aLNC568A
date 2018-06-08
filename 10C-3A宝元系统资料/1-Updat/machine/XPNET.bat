@ECHO OFF

if exist c:\dos\ReCON.bat  c:\dos\ReCON.bat 172.23.139.9 255.255.255.0 172.23.139.253
rtspkt 0x60
ntcpdrv -ip=172.23.139.9 -netmask=255.255.255.0 -gateway=172.23.139.253