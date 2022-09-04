# dev-machine

Provide your team with a minimally-invasive, local-only way to get things setup and keep things in sync.

```{toctree}
---
caption: Usage
glob: true
maxdepth: 1
---

usage/getting-started
usage/customization
```

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

## Implementation

The heart of `dev-machine` is Ansible via Docker run for/against the local machine. To get there across platforms we start with scripts that run package managers that install Docker which then runs Ansible.

After {doc}`getting started <usage/getting-started>` your team will have a Git repository you can customize with `dev-machine` core setup as a sub-tree. The README and other documention in your repository is written for end users.

Developer machines will have a `dev-machine` command that can check and update their machine against the team's repository. Developer machines will never be automatically updated and all changes require confirmation.

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
