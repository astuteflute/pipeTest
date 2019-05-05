

$folder = $env:BUILD_ARTIFACTSTAGINGDIRECTORY
$build = $env:BUILD_CONFIGURATION

#$folder = 'E:\test2'
#$build = 'Release'

Move-Item -Path $folder\pipeTest\bin\* -Destination $folder
Remove-Item -Path $folder\pipeTest -Recurse
Rename-Item -Path $folder\$build -NewName 'monkey'
