Get-NetAdapter
$names = @("172.27.236.175")
$cred = @("администратор")
Get-WmiObject -Class Win32_NetworkAdapterConfiguration -Filter IPEnabled=TRUE -ComputerName $names -credential администратор| Select-Object -Property IPAddress