@echo Off
REM ******************************************************************************************************
REM *                       ECLIPSE COMPILER AND PUSH                                                    *
REM ******************************************************************************************************        
REM * FOR THE FIRST RUN SET THE BELOW 4 VARIABLES WITH YOUR UNIX ACCOUNT DETAILS                         *
REM * USERNAME=UNIX-USERNAME                                                                             *
REM * PASSWORD=UNIX-PASSWORD                                                                             *
REM * HOST=MACHINE-NAME                                                                                  *
REM * UNIXPATH="Path of the Unix machine of the current version you are working on till 'ENS' Directory" *
REM ******************************************************************************************************
REM *  JAVA 1.7 IS REQUIRED
REM ******************************************************************************************************
set username=dgandhi
set password=Nov_2016
set host=hpx619
set unixpath=/mtpdevuser1/mtp/cc/dgandhi/dgandhi_hpx619_2000-Release/ens%1

echo "Placing the Files to the respective directory"
REM echo "Unix Path is <%1>"
REM echo "Windows Path is <%2>"
SET mypath=%~dp0
set "unixpath=%unixpath:\=/%"
REM echo "Unix File Path is <%unixpath%>"           
echo open %host%>"%mypath%\a.ftp"
echo %username%>>"%mypath%\a.ftp"
echo %password%>>"%mypath%\a.ftp"
echo put %2 %unixpath%>>"%mypath%\a.ftp" 
echo disconnect>>"%mypath%\a.ftp" 
echo quit>>"%mypath%\a.ftp"    
C:\Windows\System32\ftp.exe -s:"%mypath%\a.ftp"   

java -jar "%mypath%\TriggerBuild.jar" %username% %password% %host% %unixpath%
del "%mypath%\a.ftp"



 