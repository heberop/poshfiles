$root = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

if (-not (Get-Module PSReadLine)) {
    Install-Module -Name PowerShellGet -Force
}

if (-not (Get-Module DockerCompletion)) {
    Install-Module DockerCompletion -Scope CurrentUser -Force
}

if ($isWin) {
    if (-not (Get-Command fzf*.exe)) {
        choco install fzf -y
    }

    if (-not (Get-Module PSFzf)) {
        Install-Module -Name PSFzf -Force
    }
}
