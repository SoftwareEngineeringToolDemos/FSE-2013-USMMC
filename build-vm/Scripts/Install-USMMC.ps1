# Copy Files
Copy-Item -path c:\vagrant\files\* -Destination ([Environment]::GetFolderPath("Desktop")) -Recurse

# Create Shortcuts
$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\USMMC.lnk")
$Shortcut.TargetPath = "$Home\Desktop\USM2C\Tool.exe"
$Shortcut.Save()

$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Pat 3.lnk")
$Shortcut.TargetPath = "$Home\Desktop\Process Analysis Toolkit\Process Analysis Toolkit 3.5.1\Pat 3.exe"
$Shortcut.Save()
