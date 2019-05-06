# Enable -Verbose option
[CmdletBinding()]

$folder = $env:BUILD_ARTIFACTSTAGINGDIRECTORY
$build = $env:BUILDCONFIGURATION

#$folder = 'E:\test2\Release20190506.7'
#$build = 'Release'

Write-Host "folder $folder"
Write-Host "build $build"

$dir = Get-ChildItem -Path $folder -Recurse
foreach ($obj in $dir) {
    Write-Host "$($obj.Parent.FullName)  $($obj.DirectoryName)  $($obj.Name)"
}

Write-Host '**'
Write-Host 'Change files'
Write-Host '**'

Move-Item -Path $folder\pipeTest\bin\$build -Destination $folder 
Remove-Item -Path $folder\pipeTest -Recurse
Rename-Item -Path $folder\$build -NewName 'monkey_app'

$dir = Get-ChildItem -Path $folder -Recurse
foreach ($obj in $dir) {
    Write-Host "$($obj.Parent.FullName)  $($obj.DirectoryName)  $($obj.Name)"
}

