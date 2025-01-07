$root = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

if (!(Get-Process ssh-agent -ErrorAction Ignore)) {
    Start-SshAgent -Quiet
}

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
. "$root/Functions.ps1"
# . "$root/Completions.ps1"
# . "$root/AddLogHistory.ps1"

if ($isWin) {
    . "$root/CreateAliases.windows.ps1"
}

oh-my-posh init pwsh --config "$root/.poshthemes/ohmyposhv3.omp.json" | Invoke-Expression

$root = $null
