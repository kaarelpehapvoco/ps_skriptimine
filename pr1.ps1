# Määra andmemassiivid
$Array1 = @(1, 2, 3)
$Array2 = @(4, 5, 6)

# Määra tühi tulemuste massiiv
$Array3 = @()

# Liida vastavad elemendid ja lisa need tulemuste massiivi
$Array3 += $Array1[0] + $Array2[0]
$Array3 += $Array1[1] + $Array2[1]
$Array3 += $Array1[2] + $Array2[2]

# Väljasta tulemuste massiiv
$Array3