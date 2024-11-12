#!/bin/sh

# Install pandoc using package manager or pip as a fallback
install_pandoc() {
    case "$1" in
        "apt")
            apt update
            apt install -y pandoc
            ;;
        "apk")
            apk update
            apk add pandoc
            ;;
        "dnf")
            dnf update
            dnf install -y pandoc
            ;;
        "yum")
            yum update
            yum install -y yum-utils epel-release
            yum config-manager --set-enabled crb
            yum install -y pandoc
            ;;
        *)
    esac
}

# Detect OS and package manager
if [ -f /etc/os-release ]; then
    # Read OS information
    ID=$(awk -F= '$1=="ID" { print $2 }' /etc/os-release | tr -d '"')
    case "$ID" in
        "ubuntu"|"debian") install_pandoc "apt" ;;
        "alpine") install_pandoc "apk" ;;
        "fedora") install_pandoc "dnf" ;;
        "centos"|"rhel"|"rocky"|"almalinux") install_pandoc "yum" ;;
        *)
            echo "Linux distribution $ID is not supported."
            ;;
    esac
else
    echo "Cannot determine the Linux distribution."
    exit 1
fi

# Verify installation
if command -v pandoc >/dev/null 2>&1; then
    echo "pandoc installed successfully."
else
    echo "pandoc installation failed."
    exit 1
fi
