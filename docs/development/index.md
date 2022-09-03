# Development

```{toctree}
---
caption: Episodes
maxdepth: 2
---

```

**This is for development of `dev-machine`, not customization.**

## Philosophy

1. Easy to use.
1. Easy to customize.

## Requirements

1. You've got a shell with bash (doesn't have to be bash).
1. You've got Docker Compose installed.

## Conventions

Operating system names are more colloquial than correct and meant to be short and similar:

* lin: GNU/Linux
* mac: macOS / OSX
* win: Windows

## Docs

Please, help with the docs!

```bash
make docs-build
make docs-clean
```

## Testing

```bash
make test-lin
make test-mac
make test-win
```

## Resources

Resources that are similar or related or used as reference:

* CI / CD
  * <https://github.com/Homebrew/brew/blob/master/.github/workflows/tests.yml>
  * <https://rhonabwy.com/2020/05/09/continuous-integration-with-github-actions-for-macos-and-ios-projects/>
* Related / Similar
  * <https://developer.apple.com/forums/thread/698954>
  * <https://github.com/geerlingguy/mac-dev-playbook>
  * <https://medium.com/macoclock/automating-your-macos-setup-with-homebrew-and-cask-e2a103b51af1>
  * <https://stackoverflow.com/questions/839360/how-to-automate-development-environment-setup>
  * <https://towardsdatascience.com/everything-you-need-to-know-to-automate-osx-5ab205c54205>
  * <https://www.red-gate.com/simple-talk/sysadmin/general/automating-setup-local-developer-machine/>
