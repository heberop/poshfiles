$root = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

Import-Module PSReadLine
Import-Module DockerCompletion

if ($isWin) {
    Import-Module PSFzf
    # replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
    Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
    if ($env:WT_SESSION) {
        Set-PsFzfOption -TabExpansion -GitKeyBindings
    } else {
        Set-PsFzfOption -TabExpansion
    }
    Enable-PsFzfAliases
}
