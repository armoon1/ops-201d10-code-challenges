ipconfig /all > C:\Users\SEYED\Desktop\network_report.txt
Select-String -Path  C:\Users\SEYED\Desktop\network_report.txt -Pattern 'IPv4 Address'
Remove-Item -Path C:\Users\SEYED\Desktop\network_report.txt
