$cont = Get-Content -Path D:\3.txt
get-wmiobject win32_service -Namespace Wcmsvc -ComputerName $cont -credential администратор  