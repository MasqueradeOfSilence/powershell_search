Write-Host "Hello PowerShell Search!"

Set-Location -Path C:\Users\alexc\OneDrive\Documents\testFolder

$FileType = Read-Host "Please enter the file type"

$SearchString = Read-Host "Please enter the search string"

$AllFiles = Get-ChildItem

$FilesOfSpecifiedType = $AllFiles | Where-Object {$_.Extension -eq "." + $FileType}

Select-String $SearchString $FilesOfSpecifiedType | format-table Path
