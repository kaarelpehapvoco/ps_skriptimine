$i = 0

do{
    Write-Host "Notepad töötab" -ForegroundColor DarkYellow
    $i++
} until((Get-Process | where{$_.ProcessName -eq "notepad"}).Count -eq 0)

Write-Host $i