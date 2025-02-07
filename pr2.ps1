# Töötajate nimed ja töötatud päevad
$workData = @{
    "John" = 12
    "Joe"  = 20
    "Mary" = 18
}

# Töötajate päevapalk
$salaryData = @{
    "John" = 100
    "Joe"  = 120
    "Mary" = 150
}

# Määrame tühja hashtable'i palkade hoidmiseks
$finalSalaries = @{}

# Arvutame iga töötaja palga
foreach ($name in $workData.Keys) {
    if ($salaryData.ContainsKey($name)) {
        $finalSalaries[$name] = $workData[$name] * $salaryData[$name]
    } else {
        $finalSalaries[$name] = "Päevapalk puudub"
    }
}

# Kuvame tulemused
$finalSalaries