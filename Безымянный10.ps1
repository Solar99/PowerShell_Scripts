$jobname = "Повторяющаяся задача PowerShell"
$script = "F:\PowerShell epam\PS1\Безымянный10.ps1"
$repeat = (New-TimeSpan -Minutes 10)

Get-Process | Sort-Object CPU -Descending | select -First 10 |Out-File D:\servicesCPU.txt 