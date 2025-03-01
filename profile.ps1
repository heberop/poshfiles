$root = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$isWin = [System.Environment]::OSVersion.Platform -eq 'Win32NT'
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if ($isWin -and $null -eq $env:HOME -and $null -ne $env:USERPROFILE) {
    $env:HOME = $env:USERPROFILE
}

oh-my-posh init pwsh --config "C:\Program Files (x86)\oh-my-posh\themes\negligible.omp.json" | Invoke-Expression

. "$root/Functions.ps1"
. "$root/MeasureTime.ps1"
. "$root/InstallModules.ps1"
. "$root/ImportModules.ps1"

if (Get-Command dotnet -ErrorAction Ignore) {
    Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
        param($commandName, $wordToComplete, $cursorPosition)
        dotnet complete --position $cursorPosition "$wordToComplete" | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
    }
}

. "$root/CreateAliases.ps1"
. "$root/Completions.ps1"
# . "$root/AddLogHistory.ps1"

if ($isWin) {
    . "$root/CreateAliases.windows.ps1"
}

$root = $null

