@echo Off
REM ******************************************************************************************************
REM *                       ECLIPSE PUSH                                                                 *
REM ******************************************************************************************************        
REM * FOR THE FIRST RUN SET THE BELOW 4 VARIABLES WITH YOUR UNIX ACCOUNT DETAILS                         *
REM * USERNAME=UNIX-USERNAME                                                                             *
REM * PASSWORD=UNIX-PASSWORD                                                                             *
REM * HOST=MACHINE-NAME                                                                                  *
REM * ROOTPATH="Path on the machine with root of the project "                                           *
REM ******************************************************************************************************
REM *  JAVA 1.7 IS REQUIRED--Not Needed
REM *  Make Sure No extra charactors are there in the variable
REM ******************************************************************************************************
set username=???
set password=???
set host=??
set rootpath=???
REM ******************************************************************************************************

set unixpath=%rootpath%1
echo "Placing the Files to the respective directory"
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
C:\Windows\System32\ftp.exe -s:"%mypath%\a.ftp"   

REM java -jar "%mypath%\TriggerBuild.jar" %username% %password% %host% %unixpath%
del "%mypath%\a.ftp"



 