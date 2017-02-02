---
layout: post
title: Join Kube!
nav-menu: yes
---

There is a wealth of opportunities to take part in Kube as a project and as a dedicated Open Source project we intend to give people in the wider open source community, developers and testers, the chance to work with us to improve the state of communication and collaboration in Open Source. For testers, the chance to have early access to the project and test its limits and for developers the challenge that an application the size and breadth of Kube can bring.
In this section you can find further information about Kube's technical aspects and find promising areas to work with.

## For Testers
Like any project, testing is critical and one way to participate in the project is to install and try the early version of Kube.

Unfortunately we don't have regular builds ready yet. We're working on a [flatpak](https://www.flatpak.org) nightly, as well as regular package builds from an [OBS](https://www.openbuildservice.org) instance (Regular users will of course be able to install Kube from their favorite distribution eventually). We do have some experimental builds available though.

### How to install a test version
You can try the latest development version using one of the following methods.
Warning!: There is currently no official release and Kube is under heavy development. While it shouldn't delete all your data,
it's entirely possible it will, so beware. We also do not offer any kind of upgrade path, so you may well have to delete all your local data from one update to another. However, you're very welcome to follow the development process this way if you like to do so.

* Build from source [Link to build instructions in kube docs.]
    * Using the [Docker testenvironment](http://kube-sink.readthedocs.io/en/latest/building/)
    * Using kdesrcbuild: [kdesrc-buildrc](https://github.com/cmollekopf/docker/blob/master/kdesrcbuild/kube/kdesrc-buildrc)
    * Figuring it out yourself (use the develop branch): [Kube git repository](git://anongit.kde.org/kube), [Sink git repository](git://anongit.kde.org/sink)
* Install from copr on Fedora 25:
```
dnf copr enable kanarip/kube
dnf install kube libotp
```
* Build the flatpak: [KDE flatpak applications](git@git.kde.org:flatpak-kde-applications).

<!--
What to test, how to report the findings. (How to create a ticket in Phabricator) - Link to Phabricator (CHECK HOW IT WORKS)
-->

## For Developers
<!--
Technical information, why its so awesome. Ways to contribute. Documentation. Conctact paths to devs.
-->
While Kube builds on a lot of experience from KDEPIM Kontact, it is in many ways a fresh start that allowed us to get rid of the cruft and work with cutting edge technologies. We're trying to reuse what we can and not unnecessarily rebuild things that are already existing, but we're also comitted to only build on things we believe are stable enough and maintainable so we have a solid foundation.

Kube (and the underlying Sink) are primarily written in modern C++ and Qt, with QtQuick used for the UI.

### QtQuick
The UI is completely written in QtQuick, which gives us not only a clean separation between UI and core, but also allows us to write different UI's for different formfactors in the future.
QtQuick also massively reduces the amount of code we need write and maintain compared to a tarditional QWidget based interface.

### Components
The Kube UI is split up into components, that can then be reused in various places. Since each component is self-contained and installed as a [KPackage](https://api.kde.org/frameworks/kpackage/html/namespaceKPackage.html), these components can even be used from outside the application.

This would i.e. a clock widget on the desktop allow to directly display the Kube Calendar (which we have yet to write), without writing any UI code and with the component providing full functionality.

### Storage
As primary storage we're using the [LMDB](https://symas.com/products/lightning-memory-mapped-database/) memory-mapped key-value store.
It fits our bill nicely because it supports multi-process, has superb read-performance while maintaining a good write-performance as well.
Because the storage is multi-process the clients can read directly from disk resulting in lightning fast startup times.

To structure the values we combine the key-value store with [flatbuffers](https://google.github.io/flatbuffers/), allowing us to serialize/deserialize C++ classes to a memory region without any parsing involved. flatbuffers generates a C++ class from a schema that allows us then to access properties within the value in a safe and efficient way. Because LMDB values are memory-regions within a memory-mapped file, this allows us to read individual properties that are stored in the database without any copying at all.

For fulltext indexing we're using [Xapian](https://xapian.org).

## Documentation
Developer targeted documentation that is built directly from the docs/ subdirectory of the git repository:
* [Kube Documentation](http://kube.readthedocs.io/en/latest/)
* [Sink Documentation](http://kube-sink.readthedocs.io/en/latest/)

## Contact Paths
Kube is developed within the kdepim community and we thus also use the kde-pim mailing list.
All planning and issue tracking is done on the kde phabricator instance, so that's a good starting point to familiarize yourself with the current development version.

* [PIM mailing list](kde-pim@kde.org)
* [Kube Phabricator](https://phabricator.kde.org/tag/kube/)
* [Sink Phabricator](https://phabricator.kde.org/tag/sink/)
* [Junior Jobs](https://phabricator.kde.org/project/board/173/)

## Source
* [Kube Repository](https://phabricator.kde.org/source/kube/browse/develop/): git://anongit.kde.org/kube
* [Sink Repository](https://phabricator.kde.org/source/kube/browse/develop/): git://anongit.kde.org/sink
* [Flatpak source](git://anongit.kde.org/flatpak-kde-applications)

## Building
We're using a docker environment to develop to ensure everyone works against the same environment. More information about that can be found in the [Sink Documentation](http://kube-sink.readthedocs.io/en/latest/building/).

Nothing keeps you from just building everything natively though.

## Other Resources
* [Presentation during the Kolab Summit in 2016 by Christian Mollekopf](https://www.youtube.com/watch?v=KlZWZNtEptk)
