$a = Read-Host 'Введите число'
#$a = 10
for ($i=1; $i -eq $a; $i+1 )
{  
 if($i % $a -ne 0 ){
    
    Write-Host '$i'
 }

}