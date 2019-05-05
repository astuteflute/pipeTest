

$folder = $env:BUILD_ARTIFACTSTAGINGDIRECTORY
$build = $env:BUILD_CONFIGURATION

#$folder = 'E:\test2'
#$build = 'Release'

Write-Host "$folder"
Write-Host "$build"

#Move-Item -Path $folder\pipeTest\bin\* -Destination $folder
#Remove-Item -Path $folder\pipeTest -Recurse
#Rename-Item -Path $folder\$build -NewName 'monkey_app'
