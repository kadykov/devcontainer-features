#!/bin/sh

# Install pre-commit using package manager or pip as a fallback
install_pre_commit() {
    case "$1" in
        "apt")
            apt update
            apt install -y pre-commit
            ;;
        "apk")
            apk update
            apk add pre-commit
            ;;
        "dnf")
            dnf update
            dnf install -y pre-commit
            ;;
        "yum")
            yum update
            yum install -y yum-utils epel-release
            yum config-manager --set-enabled crb
            yum install -y pre-commit
            ;;
        *)
            echo "Using pip to install pre-commit as no package found for this distribution."
            if ! command -v pip >/dev/null 2>&1; then
                echo "pip is not installed. Please install pip first."
                exit 1
            fi
            pip install --user pre-commit
            ;;
    esac
}

# Detect OS and package manager
if [ -f /etc/os-release ]; then
    # Read OS information
    ID=$(awk -F= '$1=="ID" { print $2 }' /etc/os-release | tr -d '"')
    case "$ID" in
        "ubuntu"|"debian") install_pre_commit "apt" ;;
        "alpine") install_pre_commit "apk" ;;
        "fedora") install_pre_commit "dnf" ;;
        "centos"|"rhel"|"rocky"|"almalinux") install_pre_commit "yum" ;;
        *)
            echo "Linux distribution $ID is not directly supported. Attempting pip installation."
            install_pre_commit "pip"
            ;;
    esac
else
    echo "Cannot determine the Linux distribution."
    exit 1
fi

# Verify installation
if command -v pre-commit >/dev/null 2>&1; then
    echo "pre-commit installed successfully."
else
    echo "pre-commit installation failed."
    exit 1
fi
