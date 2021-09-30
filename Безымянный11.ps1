$files = Get-ChildItem -File -Path "D:\EPAM"| Export-Clixml D:\pr.xml 
$imxml = Import-Clixml -Path D:\pr.xml 
$disk = Get-Volume | Select-Object -Property DriveLetter, DriveType, FileSystem, Size | Export-Csv D:\pr.csv 
$imcsv = Import-csv D:\pr.csv | ForEach-Object {
if($_.DriveLetter -eq "F"){
   Write-Host $_.DriveLetter - $_.DriveType $_.FileSystem $_.Size  -ForegroundColor Red
}Elseif($_.DriveLetter -eq "D"){
   Write-Host $_.DriveLetter - $_.DriveType $_.FileSystem $_.Size  -ForegroundColor Red
}Elseif($_.DriveLetter -eq "C"){
   Write-Host $_.DriveLetter - $_.DriveType $_.FileSystem $_.Size  -ForegroundColor Red
}else{
   Write-Host $_.DriveLetter - $_.DriveType $_.FileSystem $_.Size  -ForegroundColor Green

}
}



