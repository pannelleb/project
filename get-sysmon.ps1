# $range = (get-date).AddDays(-1)
# $range = (get-date).AddHours(-2)
$range = (get-date).AddMinutes(-15)

get-winevent -filterhashtable @{LogName="Microsoft-Windows-Sysmon/Operational";StartTime=$range } | select TimeCreated,ID,Message  | format-list 
