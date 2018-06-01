---
layout: post
title: Get Kube!
nav-menu: yes
---

### How to install a test version
Kube is available for a variety of platforms.

* Flatpak:
```
flatpak -y --user install --from https://kube.kde.org/files/org.kde.kube.flatpakref
flatpak run org.kde.kube
```
* [Archlinux](https://www.archlinux.org/packages/community/x86_64/kube/):
```
yaourt -S kube
```
* Gentoo:
```
emerge -qa kube
```
* [NIXOS overlay](https://github.com/cmollekopf/kube-nix.git)
* [Mac OS image](https://kube.kolab.org/kube/kube.dmg)

### Kube for Kolab Now

* Install the Kolab Now edition (Kolab Now exclusive) with the [Kolab Now flatpak](https://blogs.kolabnow.com/2017/09/27/kube-for-kolab-now):
```
flatpak -y --user install --from https://kolabnow.com/kube/flatpak/com.kolabnow.kube.flatpakref
flatpak run com.kolabnow.kube
```