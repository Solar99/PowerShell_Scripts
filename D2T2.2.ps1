Write-Host "Введите число N"
[int]$n = Read-Host
Write-Host "Введите число M"
[int]$m = Read-Host
[array]$r=$n..$m
Write-Host "--------"
$sum=0
for($i=$n; $i -le $m; $i++ ){

 $sum+=$i
 
}
Write-Host "--------"
echo $sum