Get-EventLog -LogName System -After (Get-Date).AddDays(-1) | Out-File "C:\Users\SEYED\Desktop\last_24.txt"
Get-EventLog -LogName System -EntryType Error | Out-File "C:\Users\SEYED\Desktop\error.txt"
Get-EventLog -LogName System -After (Get-Date).AddDays(-1) | Where-Object {$_.EventID -eq 16}
Get-EventLog -LogName System -After (Get-Date).AddDays(-1) -Newest 20 
Get-EventLog -LogName System -After (Get-Date).AddDays(-1) -Newest 500
