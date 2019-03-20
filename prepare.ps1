cd HPAppShell

yarn

& 'C:\Users\rafael_marques\Downloads\nuget.exe' restore "${WORKSAPCE}\HPAppShell\windows\HPAppShell.sln"  -NoCache

& 'react-native' bundle --platform windows --entry-file index.js --bundle-output "${WORKSAPCE}\HPAppShell\windows\HPAppShell\ReactAssets\index.windows.bundle" --assets-dest "${WORKSAPCE}\HPAppShell\windows\HPAppShell\ReactAssets" --dev false
