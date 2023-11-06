
# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top

Get-Process | Sort-Object -Property CPU -Descending

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
 
 Get-Process | Sort-Object -Property Id -Descending | Select-Object -First 5

 # Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.

Get-Process | Sort-Object -Property WorkingSet -Descending

# Start a browser process (such as Google Chrome or MS Edge) and have it open

Start-Process "C:\Program Files\Google\Chrome\Application" 

# Start the process Notepad ten times using a for loop.

for ($i = 1; $i -le 10; $i++) {
    Start-Process notepad
}

# Close all instances of the Notepad.

Get-Process | Where-Object { $_.ProcessName -eq "notepad" } ForEach-Object { Stop-Process -Id $_.Id -Force }

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome

Get-Process -Name "chrome" | Select-Object -Property Name, Id
Stop-Process -Id 6564 -Force
