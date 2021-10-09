$root = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

Import-Module PSReadLine
Import-Module DockerCompletion

if ($isWin) {
    if ((Get-Command fzf*.exe)) {
        Import-Module PSFzf
        # replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
        Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r' -EnableAliasFuzzyZLocation
        if ($env:WT_SESSION) {
            Set-PsFzfOption -TabExpansion -GitKeyBindings
        } else {
            Set-PsFzfOption -TabExpansion
        }
        Enable-PsFzfAliases
    }
}

Import-Module -Name Microsoft.WinGet.CommandNotFound
Import-Module ZLocation
