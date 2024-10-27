ubuntu-microsoft:
    devcontainer features test \
    --base-image mcr.microsoft.com/devcontainers/base:ubuntu

debian-microsoft:
    devcontainer features test \
    --base-image mcr.microsoft.com/devcontainers/base:debian

ubuntu:
    devcontainer features test \
    --base-image ubuntu

ubuntu-2204:
    devcontainer features test \
    --base-image ubuntu:22.04

ubuntu-2404:
    devcontainer features test \
    --base-image ubuntu:24.04

debian:
    devcontainer features test \
    --base-image debian

debian-11:
    devcontainer features test \
    --base-image debian:11

debian-12:
    devcontainer features test \
    --base-image debian:12

debian-testing:
    devcontainer features test \
    --base-image debian:testing

debian-sid:
    devcontainer features test \
    --base-image debian:sid

alpine:
    devcontainer features test \
    --base-image alpine

alpine-320:
    devcontainer features test \
    --base-image alpine:3.20

fedora:
    devcontainer features test \
    --base-image fedora

fedora-31:
    devcontainer features test \
    --base-image fedora:31

fedora-32:
    devcontainer features test \
    --base-image fedora:32

fedora-33:
    devcontainer features test \
    --base-image fedora:33

fedora-34:
    devcontainer features test \
    --base-image fedora:34

fedora-35:
    devcontainer features test \
    --base-image fedora:35

fedora-36:
    devcontainer features test \
    --base-image fedora:36

fedora-37:
    devcontainer features test \
    --base-image fedora:37

fedora-38:
    devcontainer features test \
    --base-image fedora:38

fedora-39:
    devcontainer features test \
    --base-image fedora:39

fedora-40:
    devcontainer features test \
    --base-image fedora:40

fedora-41:
    devcontainer features test \
    --base-image fedora:41

almalinux:
    devcontainer features test \
    --base-image almalinux/9-base

rockylinux:
    devcontainer features test \
    --base-image rockylinux:9

centos:
    devcontainer features test \
    --base-image quay.io/centos/centos:stream9

all:
    just ubuntu-microsoft
    just debian-microsoft
    just ubuntu
    just ubuntu-2204
    just ubuntu-2404
    just debian
    just debian-11
    just debian-12
    just debian-testing
    just debian-sid
    just alpine
    just alpine-320
    just fedora
    just fedora-31
    just fedora-32
    just fedora-33
    just fedora-34
    just fedora-35
    just fedora-36
    just fedora-37
    just fedora-38
    just fedora-39
    just fedora-40
    just fedora-41
    just almalinux
    just rockylinux
    just centos
