# Cuckoo-sender
Send file for analysis in Cuckoo Sandbox from context menu

## Installation
Copy cuckoo-sender to %PROGRAMFILES% directory

Edit config.ini: set param REST_URL to your cuckoo api url

- #### Send to method
Add shortcut to cuckoo-send.cmd and move it to directory:
for Windows 7:
%AppData%\Microsoft\Windows\SendTo
for Windows XP:
%USERPROFILE%\SendTo\

- #### or Context menu method
Execute sendto-install.reg from data\submenu directory

## Usage
Right click on file and choice cuckoo-sender item.
File will be uploaded to Cuckoo Sandbox.

Script tested on Windows XP,7
