# Enable -Verbose option
[CmdletBinding()]

$folder = $env:BUILD_ARTIFACTSTAGINGDIRECTORY
$build = $env:BUILDCONFIGURATION

Write-Host "folder $folder"
Write-Host "build $build"

echo Move-Item -Path $folder\pipeTest\bin\* -Destination $folder -WhatIf
echo Remove-Item -Path $folder\pipeTest -Recurse
echo Rename-Item -Path $folder\$build -NewName 'monkey_app'
