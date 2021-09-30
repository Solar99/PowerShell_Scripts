<#Используя скрипт (.ps1 файл) с параметрами. Сохранить в текстовый файл на диске список из N 
запущенных(!) служб. #>
[CmdletBinding()] 
param ( 
    [string] 
    $fileName='RunningServices.txt', 
    [string] 
    $filePath='D:\PS\', 
    [Parameter(Mandatory=$true, HelpMessage="Enter the number of viewed services")] 
    [ValidateRange(1,10)][int] 
    $svcNumber,
    [Switch]$stopped
) 
if($stopped){
    
    #Write-Verbose "Stopped parameter was added"


    Get-Service | Where-Object { $_.Status -eq "Stopped"} | ` 

    Select-Object -First $svcNumber | ` 

    Out-File -FilePath $($filePath + $fileName) 

  
}else{

    #Write-Verbose "Stopped parameter was not added"

    Get-Service | Where-Object {$_.Status -eq "Running"  } | ` 

    Select-Object -First $svcNumber | ` 

    Out-File -FilePath $($filePath + $fileName) 
}