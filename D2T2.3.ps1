[int]$n = Read-Host 'Введите N'
$factorial = 1
while($n -gt 1){

   $factorial *= $n
   $n -= 1
}
echo $factorial