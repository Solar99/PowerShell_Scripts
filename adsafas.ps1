Write-Host "Введите число N"
[int]$n = Read-Host
[int]$m = 1
for($m; $m -le $n; $m++){
if ($n % $m -eq 0){
Write-Host  $m}
}