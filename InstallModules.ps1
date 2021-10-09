$root = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

if (!(Get-Module -ListAvailable -Name PSReadLine)) {
    Install-Module -Name PSReadLine -Scope CurrentUser -Force
}

if (!(Get-Module -ListAvailable -Name DockerCompletion)) {
    Install-Module -Name DockerCompletion -Scope CurrentUser -Force
}

if ($isWin) {
    Install-ChocoPackage fzf
    Install-ChocoPackage bat
}


if (!(Get-Module -ListAvailable -Name PSFzf)) {
    Install-Module -Name PSFzf -Scope CurrentUser -Force
}

if (!(Get-Module -ListAvailable -Name ZLocation)) {
    Install-Module -Name ZLocation -Scope CurrentUser -Force
}
