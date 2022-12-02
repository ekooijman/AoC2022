$inputdata = Get-Content .\input.txt -Raw

$elves = $inputdata -split '(?s)\r?\n\r?\n'

$most = 0

foreach ($elvedata in $elves) {

    $sum = 0

    $data = $elvedata -split '\r?\n'

    $data | foreach { 
        
        $sum += $_
        
    }

    if ($sum -gt $most) {
        $most = $sum
    } 

}
Write-Host "Day1_1: $most"

$callist = @()

foreach ($elvedata in $elves) {

    $sum = 0

    $data = $elvedata -split '\r?\n'

    $data | foreach { 
        
        $sum += $_
        
    }

    $callist += $sum

}

$calsorted = $callist | sort | Select-Object -Last 3

$sum2 = ($calsorted | measure -Sum).Sum

Write-Host "Day1_2: $sum2"






