 Import-Csv -Path "D:\CSVLOG.csv" -Delimiter ";"| ForEach-Object {
if ($_.EntryType -eq "Error"){
Write-Host $_.Message - $_.TimeGenerated  -ForegroundColor Red
Write-Host "--------------------------------------------------"}
Elseif ($_.EntryType -eq "Information"){
Write-Host $_.Message - $_.TimeGenerated  -ForegroundColor White
Write-Host "--------------------------------------------------"}
Elseif ($_.EntryType -eq "Warning"){
Write-Host $_.Message - $_.TimeGenerated  -ForegroundColor Yellow
Write-Host "--------------------------------------------------"}
}