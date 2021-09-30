$Xml = Import-Clixml D:\pr.xml
$Data =  Get-ChildItem -Recurse D:\EPAM | Where-Object -FilterScript {($_.LastWriteTime -gt '2021-9-14')}

foreach($LastTime in $Xml ){
     if($LastTime -ge $Data){
        echo '$LastTime'
     }
}
