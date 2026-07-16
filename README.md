# homebrew-leise

This is the official Homebrew tap for [Leise](https://github.com/zoltanf/Leise),
a private, local-first speech-to-text app for macOS.

## Install

```sh
brew install --cask zoltanf/leise/leise
```

The cask installs the smaller on-demand edition. Speech models are downloaded by
Leise when selected.

Leise currently requires Apple Silicon and macOS 14 Sonoma or newer.

## First launch

Leise community releases are ad-hoc signed and are not notarized by Apple. If
macOS blocks the first launch, remove the quarantine attribute:

```sh
xattr -dr com.apple.quarantine /Applications/Leise.app
```

## Upgrade

```sh
brew update
brew upgrade --cask leise
```

## Uninstall

Keep your Leise settings and history:

```sh
brew uninstall --cask leise
```

Remove the app and its local user data:

```sh
brew uninstall --zap --cask leise
```

The cask is checked daily against the latest public Leise GitHub release.
