# -*- coding: utf-8 -*-
# vim: ft=sls

prerequisites-pkgs-virtualizations:
  pkg.installed:
    - pkgs:
      - qemu-kvm
      - libvirt-bin
      - ubuntu-vm-builder
      - bridge-utils

prerequisites-pkgs-android-studio-x86-libs:
  pkg.installed:
    - pkgs:
      - libc6:i386
      - libncurses5:i386
      - libstdc++6:i386
      - lib32z1
      - libbz2-1.0:i386

allow-virtualizations-for-nonroot-user:
  user.present:
    - name: {{ pillar['android-studio']['user']['name'] }}
    - groups:
      - kvm
      - libvirt
