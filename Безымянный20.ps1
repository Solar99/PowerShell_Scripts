$share = [wmiClass] ‘Win32_share’
$share.create("C:powershellshare")
Get-WmiObject Win32_share | where {$_.name -eq "UserShare"}
