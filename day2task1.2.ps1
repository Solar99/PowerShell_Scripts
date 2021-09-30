$year = Read-Host 'Введите год'
$R = 0

if ($year % 4 -eq 0){

    Write-Output "Обычный"           
 
elseif($year % 100 -ne 0){

   if($year % 400 -ne 0){

       Write-Output "Высокосный"

   } 
   else{
     
     Write-Output "Обычный"
     
     }
     }
 else{
   
    Write-Output "Высокосный"

  }
}
  