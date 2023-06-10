# BeginnerTrackExercises

This is a small exercise course following
the Book ["Learn You a Haskell for Great Good!"](http://learnyouahaskell.com/).


## Getting Started

The easiest way to retrieve and maintain your working tools is installing [GHCup](https://www.haskell.org/ghcup/install/).

Please make sure, you have your dependencies installed.


### Unix Operating System

Then you can execute the following command:

```sh
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

(That fetches a installation script and executes it.)

If not set by the installation script, please add the newly installed `ghcup` binary path to the `PATH`.

```sh
export PATH=$PATH:$HOME/.ghcup/bin
```

### Windows

Execute this command

```sh
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { Invoke-Command -ScriptBlock ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -ArgumentList $true } catch { Write-Error $_ }
```

Add it to the PATH variables, and follow the [windows installation rules](https://www.haskell.org/ghcup/install)


## Exercises

This follows (roughly) the <http://learnyouahaskell.com/chapters>.

This repository provides directories, named like `Chxx`, representing a chapter from the book.

In the sub-directories,
there will be files / modules like `./Exercises.hs`,
and also `./Setup.hs` and sometimes even `./Tests.hs` or `./Run.hs`

Please solve the exercises by filling in the Holes `_` or following other comments.

Eventually, your compiler, or your Haskell Language Server (HSL, working with your editor's integration)
will help or even check your tasks, eg. correct types.

With your tool stack  tool you also have the following options.

```sh
stack build Ch02
# ^ build the programm within this exercises => compile errors

stack test Ch02
# ^ if ./Ch02/Tests.hs is provided, this runs these tests and you can check your correctness

stack run Ch09
# ^ if ./Ch09/Run.hs is provided, it starts running that programm
```

## Useful links

- http://learnyouahaskell.com
- https://www.haskell.org/ghcup/install
- https://hoogle.haskell.org


Happy Hacking! :)
