
[int]$a = Read-Host 'Введите число N'
[int]$b = Read-Host 'Введите число M'
[array]$r=$a..$b
$n = 3
for ($i=$a; $i -eq $m; $i++ )
{  
 if($i % $n -eq 0 ){
    
   echo $i
   }

}
  
  
