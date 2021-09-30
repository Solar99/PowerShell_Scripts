[int]$n = Read-Host 'Введите N'
$i = 1
#$s = 0
while ($i -le $n){

    $s = $s + 3 * $i
    
    $i = $i + 1 
    
  Write-Host "На шаге "($i-1 )"сумма S равна $s"
  
}