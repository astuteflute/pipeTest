

$folder = $env:BUILD_ARTIFACTSTAGINGDIRECTORY
$build = $env:BUILDCONFIGURATION

#$folder = 'E:\test2'
#$build = 'Release'

Write-Host "folder $folder"
Write-Host "build $build"

echo Move-Item -Path $folder\pipeTest\bin\* -Destination $folder
echo Remove-Item -Path $folder\pipeTest -Recurse
echo Rename-Item -Path $folder\$build -NewName 'monkey_app'
