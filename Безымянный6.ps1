$yesterday = (get-date) - (new-timespan -day 7)
Get-WinEvent -FilterHashTable @{LogName='system';StartTime=$yesterday} | Export-Csv -Encoding UTF8 D:\eventlog_pastuhenko.csv

