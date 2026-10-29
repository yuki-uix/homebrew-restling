# Restling Homebrew tap

Install [Restling](https://github.com/yuki-uix/restling), a gentle macOS menu bar eye-rest reminder with a growing pixel forest:

```sh
brew install --cask yuki-uix/restling/restling
```

Requires macOS 13 or later. Supports Apple silicon and Intel.

The current community preview is ad-hoc signed and has not been notarized by Apple. If macOS blocks the first launch, review the app under System Settings → Privacy & Security → Open Anyway. See [Apple's instructions](https://support.apple.com/en-us/102445).

Update:

```sh
brew update
brew upgrade --cask yuki-uix/restling/restling
```

Normal uninstall keeps your forest. Explicitly using `--zap` also deletes local forest profiles and preferences.

Release binaries, source and privacy details are in [yuki-uix/restling](https://github.com/yuki-uix/restling).
