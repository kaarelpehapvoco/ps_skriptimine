while(Get-Process | Where{$_.ProcessName -eq 'Notepad'})
{
Write-Host "Notepad is running"
}