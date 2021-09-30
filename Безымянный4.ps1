Get-Disk | select Number, Name, Size | ConvertTo-Json | Out-File D:\pr.json
$pr = Get-Content D:\pr.json | ConvertFrom 