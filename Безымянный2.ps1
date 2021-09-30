$coll = Get-LocalUser | where {$_.lastlogon} | Sort-Object -property name 
$data = (Get-Date -Year 2021 -Month 8 -Day 5).DayOfYear
foreach($name in $coll){
       if($name.lastlogon -gt $data  ){
        Write-Host $name.lastlogon $name  -ForegroundColor Red
       }
       else{
        Write-Host $name  -ForegroundColor Green
       }
}