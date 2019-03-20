pipeline {
    agent any

    stages {
        stage('Preparation') {
            steps {
                script {
                    powershell '''
                        cd HPAppShell
                        yarn
                        & 'C:\\Users\\rafael_marques\\Downloads\\nuget.exe' restore "${WORKSAPCE}\\HPAppShell\\windows\\HPAppShell.sln"  -NoCache
                        & 'react-native' bundle --platform windows --entry-file index.js --bundle-output "${WORKSAPCE}\\HPAppShell\\windows\\HPAppShell\\ReactAssets\\index.windows.bundle" --assets-dest "${WORKSAPCE}\\HPAppShell\\windows\\HPAppShell\\ReactAssets" --dev false
                    '''
                }
            }
        }
        stage('Build') {
            steps {
                script {
                    powershell '''
                        # Path to Msbuild tool
                        $msbuild = "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Enterprise\\MSBuild\\15.0\\Bin\\MSBuild.exe"
                        set-alias msbuild $msbuild
                        
                        # solution settings
                        $sln_name = "${WORKSAPCE}\\HPAppShell\\windows\\HPAppShell.sln"
                        $vs_config = "DebugBundle"
                        $vs_platfom = "x64"

                        # call the build method
                        Write-Host "Building solution`n" -foregroundcolor Green
                        msbuild $sln_name /t:Build /p:Configuration=$vs_config /p:Platform=$vs_platfom /v:q /nologo
                    '''
                }
            }
        }
    }
}
