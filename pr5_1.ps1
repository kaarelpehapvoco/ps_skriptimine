Get-Process | Where{$_.ProcessName -eq 'notepad'} | Select Processname, Id

$processes = Get-Process
foreach($process in $processes)
{
Write-Host "Process : "$process -ForegroundColor Yellow
if($process.PM / 1024 / 1024 -le 100)
{
continue
}
Write-Host ('Process ' + $process.Name + ' is using more than 100 MB RAM.') -
ForegroundColor Green
}