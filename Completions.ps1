$root = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

if (Get-Command dotnet -ErrorAction Ignore) {
    Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
        param($commandName, $wordToComplete, $cursorPosition)
        dotnet complete --position $cursorPosition "$wordToComplete" | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
    }
}

Set-Alias -Name k -Value kubectl
kubectl completion powershell | Out-String | Invoke-Expression
Register-ArgumentCompleter -CommandName k -ScriptBlock $__kubectlCompleterBlock

. "$root/Modules/flux-completion.ps1"
