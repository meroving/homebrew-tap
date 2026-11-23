# meroving/tap

Homebrew casks for [Dostoevsky](https://dostoevsky.app), a writing app for macOS that keeps
every version of a word, sentence or paragraph in place.

```sh
brew install meroving/tap/dostoevsky
```

`brew upgrade` brings each new version. The cask installs the signed and notarized `.dmg` from
[the app's GitHub Releases](https://github.com/meroving/dostoevsky/releases); its source is
[packaging/homebrew/dostoevsky.rb](https://github.com/meroving/dostoevsky/blob/main/packaging/homebrew/dostoevsky.rb),
filled in by `scripts/cask.sh` for each release.
