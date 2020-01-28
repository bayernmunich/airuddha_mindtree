##############################################################################################################
$text=Get-Content "D:\a\1\s\*\**.sql" | Select-String  "Drop Table"
write-host $text
if($text -match "Drop Table")
{
 Write-Error "$("contains alias") $($env:ErrorMessage)"
}
else
{
Write-Error "Drop Table does exists in sql scripts"
}
##############################################################################################################

##############################################################################################################
$text=Get-Content "D:\a\1\s\*\**.sql" | Select-String  "TRUNCATE TABLE"
write-host $text
if($text -match "TRUNCATE TABLE")
{
 Write-Error "$("contains alias") $($env:ErrorMessage)"
}
else
{
Write-Error "Truncate Table exists in sql scripts"
}
##############################################################################################################
