#Get-ChildItem -Path 'C:\Program Files\Git' -Include *.exe
Get-ChildItem -Path $env:ProgramFiles -Recurse -Include *.exe | Sort-Object -Descending -Property "Name" 