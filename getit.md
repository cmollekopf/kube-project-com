---
layout: post
title: Get Kube!
nav-menu: yes
---

Try the latest and greatest from the Kube team.

## For Linux
Flatpak is the recommended way to try the latest version of Kube:
```
flatpak -y --user install --from https://files.kube-project.com/flatpak/com.kubeproject.kube.flatpakref
flatpak run com.kubeproject.kube
```

## For Mac OS
A nightly updated [Mac OS image](https://files.kube-project.com/kube.dmg) is available. Requires Mac OS Mavericks (10.9) or later.

### Other sources
Kube is available for a variety of distributions.

* [Archlinux](https://www.archlinux.org/packages/community/x86_64/kube/):
```
pacman -S kube
```
* Gentoo:
```
emerge -qa kube
```
* [NIXOS overlay](https://github.com/cmollekopf/kube-nix.git)
* [Fedora Copr Repository](https://copr.fedorainfracloud.org/coprs/rajeeshknambiar/kube/)

### Kube for Kolab Now

Kube for [Kolab Now](https://kolabnow.com) offers you the simplest setup possible for [Kolab Now](https://kolabnow.com) users. Enter your credentials, done. Please note that Kube is not yet officially supported so your mileage may vary.

* Install the Kolab Now edition (Kolab Now exclusive) with the [Kolab Now flatpak](https://blogs.kolabnow.com/2017/09/27/kube-for-kolab-now)
```
flatpak -y --user install --from https://files.kube-project.com/kolabnowflatpak/com.kolabnow.kube.flatpakref
flatpak run com.kolabnow.kube
```
* [Kolab Now Mac OS image](https://files.kube-project.com/kube-kolabnow.dmg)
