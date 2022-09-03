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

* <https://github.com/Homebrew/brew/blob/master/.github/workflows/tests.yml>
* <https://rhonabwy.com/2020/05/09/continuous-integration-with-github-actions-for-macos-and-ios-projects/>
