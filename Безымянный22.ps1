$VMname = Get-VM -Name *
foreach($item in $VMname){ 
 switch ( $item.State){
          'off'{ Write-Host $item.Name -ForegroundColor red -NoNewline
                 Write-Host "($item.State)"-ForegroundColor green }
      'Running'{ Write-Host $item.Name -ForegroundColor red -NoNewline
                 Write-Host "($item.State)"-ForegroundColor green }
               }    
   }
