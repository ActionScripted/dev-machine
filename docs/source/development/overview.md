# Overview

```{note}
This is intended for developers of `dev-machine` and not for {doc}`customization <../usage/customization>`.
```

## Philosophy

1. Easy to use.
1. Easy to customize.
1. Everything tested.

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
