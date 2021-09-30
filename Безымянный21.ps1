$share = Get-WmiObject Win32_share | where {$_.name -eq "UserShare"}
$share.Delete
Get-WmiObject -class win32_share -ComputerName localhost