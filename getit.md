---
layout: post
title: Get Kube!
nav-menu: yes
---

Kube is available for a variety of platforms. If you want to try a bleeding edge version the org.kolab.kube flatpak is the most frequently updated.
If you want a flatpak that shares the platform with other KDE flatpaks, use the org.kde.kube flatpak. They are otherwise identical and both built from the develop branch.

* Flatpak based on the KDE runtime, periodically updated from the develop branch:
```
flatpak -y --user install --from https://kube.kde.org/files/org.kde.kube.flatpakref
flatpak run org.kde.kube
```
* Flatpak nightly from the develop branch, not based on the KDE runtime.:
```
flatpak -y --user install --from https://kube.kolab.org/kube/flatpak/org.kolab.kube.flatpakref
flatpak run org.kolab.kube
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
* [Fedora Copr Repository](https://copr.fedorainfracloud.org/coprs/rajeeshknambiar/kube/)

### Kube for Kolab Now

Kube for Kolab Now offers you the simplest setup possible. Enter your credentials, done.

* Install the Kolab Now edition (Kolab Now exclusive) with the [Kolab Now flatpak](https://blogs.kolabnow.com/2017/09/27/kube-for-kolab-now):
```
flatpak -y --user install --from https://kolabnow.com/kube/flatpak/com.kolabnow.kube.flatpakref
flatpak run com.kolabnow.kube
```
* [Kolab Now Mac OS image](https://kube.kolab.org/kube/kube-kolabnow.dmg)
