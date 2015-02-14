# prepare install dir
$installRootDirPath = "$env:ProgramFiles\Posh-CI\Modules\Posh-CI-CreateNuGetPackage"

# handle upgrade scenario
if(Test-Path "$installRootDirPath"){
    Write-Debug 'removing previous Posh-CI-CreateNuGetPackage installation'
    . "$PSScriptRoot\Uninstall.ps1"
}
New-Item $installRootDirPath -ItemType Directory | Out-Null

Copy-Item -Path "$PSScriptRoot\*" -Destination $installRootDirPath -Recurse