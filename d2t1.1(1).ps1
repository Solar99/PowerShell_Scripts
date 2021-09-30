[int]$a = Read-Host 'Введите число'
[int]$i = 1
for ($i; $a -ge $i; $i+1 ){  
 if($a % $i -eq 0 ){ 
   $i
 }
}