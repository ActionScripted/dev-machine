# dev-machine

```{toctree}
---
caption: Usage
hidden: true
maxdepth: 2
---

getting-started
```


```{toctree}
---
caption: Development
glob: true
hidden: true
maxdepth: 2
---

development/*
```

Automate and maintain developer machine setup.

## Getting Started

To get started, check out {doc}`getting started <getting-started>`.

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

To contribute, check out the {doc}`development overview <development/overview>`.
