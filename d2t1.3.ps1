$n = Read-Host 'Введите N'
$m = Read-Host 'Введите M'
$k = Read-Host 'Введите K'
if(($k % $n  -eq 0) -or ($k % $m  -eq 0) -and ($k -lt $n * $m)){
    
   echo "Да"

}
else{

   echo "Нет"
}