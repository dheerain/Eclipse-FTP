# Eclipse-FTP
This is an External Plugin for Eclipse To push the Code to Remote machine directly from Eclipse using FTP.

# Usage
I Have a Project on A remote Unix machine which is quite Slow and  Support SSH Only.
I am not Good With Vim and Love to code on Eclipse.
I Got the Whole Source code on my Windows machine and Set it up On Eclipse but to Compile it I have to use the Remote machine.
So Insted of Copying the Code to A Particular Directory on the Remote Machine using filezilla I have developed this Eclipse Plugin

#  Compatibility
Windows Machine only + Eclipse 

# Installation and Configuration 
#    Steps
1. Place the Batch File on your Windows machine (Preferably Eclipse Directory).
2. Open The Eclipse_FTP.bat File in Notepad and populate Credential to connect to machine.
3. Populate Root Path of the Project on the Remote machine in <b>rootpath </b> Variable in the Notepad File.Remaining path and File name  Will be taken from eclipse.
3. Open Eclipse and Open the Project.
4. GoTo: Run->External Tools->External Tools Configuration
5. Click on New Launch Configuration.
6. Provide Name of the Plugin like  (Push To Server).
7. Under the Main Tab Click on Browse File System and Select The Eclipse_FTP.bat 
8. Under Arguments box put these 3 variables Same to same 
<br><b>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${resource_path}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"${selected_resource_loc}"<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${resource_name}</b><br><br><br>
                  
