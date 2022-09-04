# dev-machine

Automate and maintain developer machine setup.

```{toctree}
---
caption: Usage
glob: true
maxdepth: 1
---

usage/getting-started
usage/customization
```

## Implementation

The heart of `dev-machine` is Ansible via Docker run for/against the local machine. To get there across platforms we start with scripts that run package managers that install Docker which then runs Ansible.

## Platforms

```{list-table}
---
header-rows: 1
---

* - OS
  - Tested Version
  - Package Manager
* - macOS
  - 12.5.1
  - [brew](https://brew.sh/)
* - Ubuntu
  - 22.04 LTS
  - [apt](https://wiki.debian.org/PackageManagement)
* - Windows
  - 11
  - [choco](https://chocolatey.org/)
```

## Development

```{toctree}
---
caption: Development
glob: true
hidden: true
maxdepth: 2
---

development/*
```

To contribute, check out the {doc}`development overview <development/overview>`.
