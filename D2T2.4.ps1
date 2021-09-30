Write-Host "Введите число N"
[int]$n = Read-Host
Write-Host "Введите число M"
[int]$m = Read-Host
[array]$r=$n..$m
$sum=1
for($i=$n; $i -le $m; $i++){

 $sum= $i*$i

 echo $sum

} 
