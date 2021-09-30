Get-EventLog -LogName Application |  Sort-Object -property Time | ConvertTo-Json | Out-File D:\Exit.json 
Get-Content D:\Exit.json | ConvertFrom-Json