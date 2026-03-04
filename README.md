# Brew formula

This repository contains Homebrew formulas for installing `dev-commands` CLI
tools and commands.

- [dev-cli](https://github.com/cgaube/dev-cli) – The main `dev` CLI tool, which
  provides a unified interface for various development commands.
- [dev-commands](https://github.com/cgaube/dev-commands) – Monorepo for all dev
  commands.

## Tapping

You need to tap the repository before installing any formula:

```shell
brew tap cgaube/devcommands
```

## Installing formula

### Main `dev` utility

```shell
brew install dev-cli

# Manually install other packages as needed
brew install devcommand-<package-name>
```

### Package Management

As an alternative to installing `dev-cli` directly, you can install the
`devcommand-packages` formula, which provides a package management system for
listing and installing default command packages.

It automatically installs `dev-cli` as a dependency, allowing you to use the
`dev packages` command to manage your packages.

```shell
brew install devcommand-packages

dev packages list
dev packages install <package-name>
```

## Development

### Updating homebrew-formulas

1. Edit the formula files
2. Commit your changes
3. Update Homebrew

```shell
brew update
```
