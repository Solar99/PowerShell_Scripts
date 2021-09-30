<#
 Вывести список названий и занятую виртуальную память (в Mb) каждого процесса,
 разделённые знаком тире, при этом если процесс занимает более 100Mb – выводить 
 информацию красным цветом, иначе зелёным. 
 #>

Get-Process | %{
    if($_.VirtualMemorySize -gt 100Mb){
        Write-host "$($_.Name) - $($_.VirtualMemorySize/1MB)MB" -ForegroundColor Red
    }else{
        Write-host ($_.Name,(($_.VirtualMemorySize/100MB).ToString("F3")+"MB")) -Separator "-" -ForegroundColor Green
    }
}

<#
Получите список локальных пользователей, отсортировав их по имени. 
Если они не авторизовывались больше (года, месяца, дня – 
выбрать наиболее подходящий), то с именем вывести и дату последнего входа, выделив красным цветом. 
#>

Get-LocalUser | Sort-Object Name |
foreach{ 
    if (($_.LastLogon -ne $null) -and ($_.LastLogon.Date -le (Get-Date).AddDays(1))) { 
        Write-Host $_.Name $_.LastLogon -ForegroundColor Red 
    }else { 
        Write-Host $_.Name  
    } 
} 

#Сравнение файлов
Get-ChildItem –path ‘d:\PS’| Export-Clixml -Path d:\files.xml 
#Внесли изменения

$filesXML = Import-Clixml -Path d:\files.xml 
 
Get-ChildItem –path ‘d:\PS’| foreach-object {
    $fileWasInExport=$false 
    foreach ($xfile in $filesXML){ 
        if (($_.FullName -eq $xfile.FullName)) 
        {   
            $fileWasInExport=$true
            if (($_.LastWriteTimeUTC -ne $xfile.LastWriteTimeUTC)) {
                Write-Host $_.Name  
                break
            }
        } 
    } 
    if(!$fileWasInExport){
         Write-Host "New" $_.Name  
    }
} 
 

$dirNow= Get-ChildItem –path ‘d:\PS’
foreach ($xfile in $filesXML){ 
   
    $dirNow | foreach-object {
        $fileWasInExport=$false 
        if (($_.FullName -eq $xfile.FullName)) 
        {   
            $fileWasInExport=$true
        }
    } 
     
    if(!$fileWasInExport){
         Write-Host "Deleted" $_.Name  
    }
} 