# Heber's PowerShell files

*Originally forked from* [https://github.com/giggio/poshfiles](https://github.com/giggio/poshfiles)

These are my personal poshfiles. I have several [aliases](https://github.com/heberop/poshfiles/blob/main/CreateAliases.ps1) configured
as well as several [modules](https://github.com/heberop/poshfiles/tree/main/Modules).
Check them out and see if you want to keep them all.

## Installation

Windows:

````powershell
git clone --recursive https://github.com/heberop/poshfiles.git $env:userprofile\Documents\PowerShell
````

Linux:

````powershell
git clone --recursive https://github.com/heberop/poshfiles.git $env:HOME\Documents\PowerShell
````

## Notes on fonts

You need a powerline enabled font to get everything to display properly. The only one I have found
that works as expected so far are
[Cascadia Code](https://github.com/microsoft/cascadia-code) and
[Deja Vu](https://github.com/powerline/fonts/blob/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20for%20Powerline.ttf)
from the powerline repo. They have the glyphs and symbols necessary to show everything as expected.

The best terminal experience will be with
[Windows Terminal](https://github.com/microsoft/terminal), and you can also use
it with [Conemu](https://conemu.github.io/).
You don't need either to have a nice display if you are on Windows 10. Simply download the font
and set it as default on the PowerShell properties window and everything should work.
If you decide to use Conemu, you have more options for fonts, but remember to set the main console font
and the alternative font to the same font with the symbols.

## Useful Alias

| Alias/Shortcut | Description                              |
|----------------|------------------------------------------|
| `fe`/`Ctrl-t`  | Starts an editor for the selected files in the fuzzy finder. |
| `fd`/`Alt-c`   | Sets the current location from the user's selection in fzf. |
| `Ctrl-r`       | Rerun a previous command from history.   |
| `fz`           | Starts fzf with input from the history of [ZLocation](https://github.com/vors/ZLocation) and sets the current location. |
| `z {str}`      | Navigate to a known location using part of the string of a path |
| `z -`          | Navigate back to the location in the stack |
| `fgs`          | Starts fzf with input from output of the `git status` function. |
| `fh`           | Rerun a previous command from history based on the user's selection in fzf. |
| `fkill`        | Runs `Stop-Process` on processes selected by the user in fzf. |
| `cde`          | Sets the current location based on the [Everything](https://www.voidtools.com/) database. |

## Modules

* [DockerCompletion](https://github.com/matt9ucci/DockerCompletion)

  > DockerCompletion for PowerShell
  
* [Fasdr](https://github.com/kelleyma49/fasdr)

  > Fasdr (pronounced similar to "faster") is a command-line productivity booster for PowerShell. It supports quick access to leaf and container classes for PowerShell providers. Leaf and container paths are tracked and ranked based on frequency and date.

* [git-status-cache-posh-client](https://github.com/cmarcusreid/git-status-cache-posh-client)

  > PowerShell client for retrieving git repository information from git-status-cache. Communicates with the cache process via named pipe.
  
* [oh-my-posh](https://ohmyposh.dev/)

  > A prompt theme engine for any shell
  
* [pester](https://github.com/pester/Pester)

  > Pester is the ubiquitous test and mock framework for PowerShell.
  
* [posh-alias](https://github.com/giggio/posh-alias)

  > A better alias than `Set-Alias`.
  
* [posh-git](https://github.com/dahlbyk/posh-git)

  > **posh-git** is a PowerShell module that integrates Git and PowerShell by providing Git status summary information that can be displayed in the PowerShell prompt. **posh-git** also provides tab completion support for common git commands, branch names, paths and more.

* [posh-sshell](https://github.com/dahlbyk/posh-sshell)

  > Originally part of the posh-git project, posh-sshell is a PowerShell module that provides utilities for working with SSH connections within PowerShell.

* [PowerShellGuard](https://github.com/smurawski/PowerShellGuard)

  > A Guard implementation for PowerShell, which allows for Pester tests to automatically be run whenever you make changes to a file.
  
* [psake](https://github.com/psake/psake)

  > psake is a build automation tool written in PowerShell. It avoids the angle-bracket tax associated with executable XML by leveraging the PowerShell syntax in your build scripts. psake has a syntax inspired by rake (aka make in Ruby) and bake (aka make in Boo), but is easier to script because it leverages your existing command-line knowledge.
  
* [PSEverything](https://github.com/powercode/PSEverything)

  > PowerShell cmdlet for the local search engine Everything
  > **NOTE:** This module requires the [installation of Everything](http://www.voidtools.com/)
  
* [PSFzf](https://github.com/kelleyma49/PSFzf)

  > PSFzf is a PowerShell module that wraps fzf, a fuzzy file finder for the command line.
  > **NOTE:** This module requires the [installation of fzf](https://community.chocolatey.org/packages/fzf)
  
* [ZLocation](https://github.com/vors/ZLocation)

  > Tracks your most used directories, based on number of previously run commands.

## References

* Originally forked from [https://github.com/giggio/poshfiles](https://github.com/giggio/poshfiles)
* [Scott Hanselman: Take your Windows Terminal and PowerShell to the next level with Terminal Icons](https://www.hanselman.com/blog/take-your-windows-terminal-and-powershell-to-the-next-level-with-terminal-icons)
