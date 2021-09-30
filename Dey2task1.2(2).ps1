$year = Read-Host 'Введите год'

if ($year % 4 -ne 0 -or  ($year % 100 -eq 0 -and $year % 400 -ne 0))  {

 Write-Output "Обычный"

}
else{
 Write-Output "Высокосный"
}