##############################################################################################################
$text=Get-Content "C:\Database_Scripts\**.sql" | Select-String  "Create Table #"
write-host $text
if($text -match "Create Table #")
{
Write-Host " Create table # exists in sql scripts"
}
##############################################################################################################


##############################################################################################################
$text=Get-Content "C:\Database_Scripts\**.sql" | Select-String  "Drop Table #"
write-host $text
if($text -match "Drop Table #")
{
Write-Host " Drop Table # exists in sql scripts"
}
##############################################################################################################

$text=Get-Content "C:\Database_Scripts\**.sql" | Select-String  "TRUNCATE TABLE #"
write-host $text
if($text -match "TRUNCATE TABLE #")
{
Write-Host "TRUNCATE TABLE #  exists in sql scripts"
}
##############################################################################################################
$text=Get-Content "C:\Database_Scripts\**.sql" | Select-String  "Create Table"
write-host $text
if($text -match "Create Table")
{
Write-Host "Create Table does not exists in sql scripts"
}
##############################################################################################################
$text=Get-Content "C:\Database_Scripts\**.sql" | Select-String  "Drop Table"
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
$text=Get-Content "C:\Database_Scripts\**.sql" | Select-String  "TRUNCATE TABLE ##"
write-host $text
if($text -match "TRUNCATE TABLE ##")
{
Write-Host "TRUNCATE TABLE ## exists in sql scripts"
}
##############################################################################################################
$text=Get-Content "C:\Database_Scripts\**.sql" | Select-String  "Drop Table ##"
write-host $text
if($text -match "Drop Table ##")
{
Write-Host "Drop Table ##  exists in sql scripts"

}
##############################################################################################################
$text=Get-Content "C:\Database_Scripts\PROC_TransferredMindEntryInTransactionsql - Copy.sql" | Select-String  "TRUNCATE TABLE"
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