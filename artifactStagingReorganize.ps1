# Enable -Verbose option
[CmdletBinding()]

$folder = $env:BUILD_ARTIFACTSTAGINGDIRECTORY
$build = $env:BUILDCONFIGURATION

Write-Host "folder $folder"
Write-Host "build $build"

echo Get-ChildItem -Path $folder -Recurse

echo Move-Item -Path $folder/pipeTest/bin/$build -Destination $folder 
echo Remove-Item -Path $folder\pipeTest -Recurse
echo Rename-Item -Path $folder\$build -NewName 'monkey_app'

echo Get-ChildItem -Path $folder -Recurse

