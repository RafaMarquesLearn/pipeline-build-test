# Path to Msbuild tool

$msbuild = "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\MSBuild\15.0\Bin\MSBuild.exe"
set-alias msbuild $msbuild

# solution settings
$sln_name = "C:\Users\rafael_marques\Documents\code\react-native\win-app-shell\HPAppShell\windows\HPAppShell.sln"
$vs_config = "Release"
$vs_platfom = "x64"

# call the build method
Write-Host "Building solution`n" -foregroundcolor Green
msbuild $sln_name /t:Build /p:Configuration=$vs_config /p:Platform=$vs_platfom /v:q /nologo
