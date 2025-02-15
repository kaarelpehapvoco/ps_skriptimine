$result = @()
$students = Import-Csv .\Students.csv
$students | ForEach-Object {
    $name = $_.Name
    $age = [int]$_.Age 
    #Write-Output $age

    if ($age -lt 10) {
        $data = "Junior school"}
    elseif ($age -gt 11) {
        $data = "Senior School"}
        #Export-Csv $name, $data
    $result += [PSCustomObject]@{
        Name = $name
        School = $data
  }  
}

$result | Export-Csv -Path ".\Result.csv" -NoTypeInformation

Write-Host "Student info has been saved to Result.csv" -ForegroundColor Blue