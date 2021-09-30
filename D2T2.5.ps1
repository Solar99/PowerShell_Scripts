
[string]$n = Read-Host '1,2,0,1,2' 
[array]$b =  $n.split(" ")

$s = 0
while ($b[$i] -eq 0){
   
   $s +=  $b[$i]
   $i++
    
   }
echo $s










