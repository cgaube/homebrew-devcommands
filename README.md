# Brew formula

This repository contains Homebrew formulas for installing `dev-commands` CLI
tools and commands.

## Tapping

```shell
brew tap cgaube/devcommands
```

## Installing formula

To avoid publishing tags or releases from the monorepo and constantly updating
formulas, we use Homebrew’s
[HEAD mode](https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md#unstable-versions-head).

### Main `dev` utility

```shell
brew install --HEAD dev-cli
```

### Other packages

```shell
brew install --HEAD devcommand-test
```

## Upgrading formula

Since we’re using **HEAD** mode, upgrades require a `reinstall`:

```shell
brew reinstall dev-cli
```

## Updating homebrew-formulas

1. Edit the formula files
2. Commit your changes
3. Update Homebrew

```shell
brew update
```
