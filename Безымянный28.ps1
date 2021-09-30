$log = Get-EventLog -LogName Application |  Sort-Object -property Time | ConvertTo-Json | Out-File D:\Exit.json 
$time = (Get-Date -Year 2021 -Month 9 -Day 17).DayOfWeek
foreach($name in $log){
       if($name.Time -gt $data){
        Write-Host $name.Time $name  
        }
}
 Get-Content D:\Exit.json | ConvertFrom-Json