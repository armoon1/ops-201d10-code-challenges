# Write a Powershell script that automates the configuration of a new Windows 10 endpoint.

#Enable File and Printer Sharing
Enable-NetFirewallRule -Name "Filw and Printer Sahring (SMB-In)"
Enable-NetFirewallRule -Name "Filw and Printer Sahring (NB-Session-In)"

#Allow ICMP traffic
New-NetFirewallRule -Name "Allow ICMP" -DisplayName "Allow ICMP" -Protocol ICMPv4 -Action Allow -Enabled True

#Enable Remote management
Enable-PSRemoting -Force

#Remove bloatware
Get-AppxPackage | Select-Object Name, PackageFullName
Remove-AppxPackage -Package "Microsoft.XboxApp_2012.1008.330.0_x64__8wekyb3d8bbwe"

#Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

#Disable SMBv1, an insecure protocol
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" SMB1 -Type DWORD -Value 0 -Force
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" SMB1 -Type DWORD -Value 0 -Force
Restart-Computer
