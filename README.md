# homebrew-leise

This is the official Homebrew tap for [Leise](https://github.com/zoltanf/Leise),
a private, local-first speech-to-text app for macOS.

## Install

```sh
brew install --cask zoltanf/leise/leise
```

The cask installs the fully offline edition, including Parakeet v2, Parakeet v3,
and vocabulary boosting. No model download is required after installation.

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

Each Leise release updates this cask from the published offline DMG's GitHub SHA-256 digest.
