$names = @("172.27.236.175")
$cred = @("администратор")
Enter-PSSession -ComputerName 172.27.236.175 -credential администратор

Set-NetIPInterface -InterfaceAlias Ethernet -Dhcp Enabled 