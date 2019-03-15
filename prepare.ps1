Set-ExecutionPolicy Bypass -Scope Process

& 'C:\Users\rafael_marques\Downloads\nuget.exe' restore "C:\Users\rafael_marques\Documents\code\Projeto2\windows\Projeto2.sln" -ConfigFile "C:\Users\rafael_marques\AppData\Roaming\NuGet\NuGet.Config" -NoCache

cd C:\Users\rafael_marques\Documents\code\Projeto2

& 'react-native' bundle --platform windows --entry-file index.js --bundle-output "C:\Users\rafael_marques\Documents\code\Projeto2\windows\Projeto2\ReactAssets\index.windows.bundle" --assets-dest "C:\Users\rafael_marques\Documents\code\Projeto2\windows\Projeto2\ReactAssets" --dev false
