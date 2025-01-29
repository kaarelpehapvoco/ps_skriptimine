#start the notepad process 3 times

for($i = 0; $i -lt 3; $i++){
Start-Process "C:\Windows\notepad.exe"
}

$statementDisplayed = 0;

do{
Write-Host "Notepad is running"
$statementDisplayed++
Start-Sleep -Seconds 1
}until(!(Get-Process | Where{$_.ProcessName -eq 'Notepad'}))

#show the number of times, the statement was displayed

Write-Host "The statement was displayed $statementDisplayed times"