$coll = Get-Process | where {$_.VM } | Sort-Object -Property ProcessName | select -Unique 

foreach($item in $coll){
        if($item.VM -gt 100mb){
           Write-Host $item.Name '-' $item.VM -ForegroundColor Red
           Write-Host '-------------------------'
        }
        else{
           Write-Host $item.Name '-' $item.VM -ForegroundColor Green
           Write-Host '-------------------------'
        }
} 

 