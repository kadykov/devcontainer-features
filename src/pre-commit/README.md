
# Pre-commit as a system pacakge

`pre-commit` devcontainer feature
for those who don't care about the exact version,
so it installs the latest version available from the distro repository.

## Supported distros

- Ubuntu >= 22.04
- Debian >= 11
- Alpine >= 3.20
- Fedora >= 31
- AlmaLinux, Rockylinux, CentOS Stream >= 9

## Usage example

```json
"features": {
    "ghcr.io/kadykov/devcontainer-features/pre-commit:1": {}
}
```
