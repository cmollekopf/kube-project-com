---
layout: post
title: Join Kube!
nav-menu: yes
---

There is a wealth of opportunities to take part in Kube as a project and as a dedicated Open Source project we intend to give people in the wider open source community, developers and testers, the chance to work with us to improve the state of communication and collaboration in Open Source. For testers, the chance to have early access to the project and test its limits and for developers the challenge that an application the size and breadth of Kube can bring.
In this section you can find further information about Kube's technical aspects and find promising areas to work with.

## For Testers
Like any project, testing is critical and one way to participate in the project is to install and try Kube.

If you find a problem that you think should be fixed you can report it over [here](https://phabricator.kde.org/project/view/238/).

### How to install a test version
You can try the latest development version using one of the following methods.

* Build from source: [Instructions](http://kube.readthedocs.io/en/latest/setting-up-dev-env/)
* [Install a flatpak or prebuilt package.](getit.html)

## For Developers
Kube (and the underlying Sink) are primarily written in modern C++ and Qt, with QtQuick used for the UI.

### QtQuick
The UI is completely written in QtQuick, which gives us not only a clean separation between UI and core, but also allows us to write different UI's for different formfactors in the future.
QtQuick also massively reduces the amount of code we need write and maintain compared to a tarditional QWidget based interface.

### Views
The Kube UI is split up into views that each try to help with a particular workflow.
See also [https://phabricator.kde.org/T6029](https://phabricator.kde.org/T6029).

### Storage
As primary storage we're using the [LMDB](https://symas.com/lmdb/) memory-mapped key-value store.
It fits our bill nicely because it supports multi-process, has superb read-performance while maintaining a good write-performance as well.
Because the storage is multi-process the clients can read directly from disk resulting in lightning fast startup times.

To structure the values we combine the key-value store with [flatbuffers](https://google.github.io/flatbuffers/), allowing us to serialize/deserialize C++ classes to a memory region without any parsing involved. flatbuffers generates a C++ class from a schema that allows us then to access properties within the value in a safe and efficient way. Because LMDB values are memory-regions within a memory-mapped file, this allows us to read individual properties that are stored in the database without any copying at all.

For fulltext indexing we're using [Xapian](https://xapian.org).

## For Designers

When you are reading this, you are in fact doing one of the actions that we have based our design of Kube on. You are sorting information from left-to-right, letting your eyes fall from the top left of the text, to the bottom right. 
While scanning over this page you have searched for key words and phrases, large portions of text or images that you automatically focused on. Not once during this time you have taken a deep interest in the margins of the webpage or searched for further information hidden at the bottom of the page in the license and creators reference. 

You‘re reading. 

Now this isn‘t news to you of course, we all know this, but what we asked ourselves when we started designing Kube: Why is this so uncommon in communication platforms design? Why is the text, the reading of text communication or the creating of text often hidden away behind clutter and secondary actions?
We wanted to focus on strict facts about how we humans handle large amount of information, how we scan for information on a page, how we rank the information based on assumed importance, and how we feel comfortable in consuming or creating text.

We do this by adopting a radically practical approach to the entire design. By defining what the actual Content is, and what the Key Actions are.

By focusing directly on the stated Key Action of the application, in the current state email conversations, we can judge any suggestion of added features or design edits by the value they bring to the key action. The Key Action is directly connected to the stated Content, the object which is displayed, edited or created within the application. 

In Kube‘s current release, we know that the content is the reading and writing of email communication. From that we can not only discern how much screen real estate is reserved for what part of the application but also look at placement for UI elements.
Moving deeper into the design process, we looked how we traditionally handle reading and writing text and made a direct assumption: we don‘t need to invent a new way of reading and writing when one already exists. Instead of trying to force the user to consume content in a new interesting way, we design for how the user already handles the content.

During the entirety of the design process we have relied on fast changes and iterative design. Group comments and suggestions are quickly taken on board, and changes presented to the group for further discussion. 
By creating this space for direct and fast changes during the design process we have avoided the problem of reserving room for edits only in between releases. That way, instead of seeing design as purely a customer-reaction based process we allow for larger changes based on in-team discussions and practical issues. 
As we release Kube to the public it will be interesting to take these community aspects of design and see how they can be used to improve impromptu testing and client feedback.

One unique part of this iterative design has been a process we call [quotation mark] Pixel Punching [quotation mark] where a designer and a programmer work together during a meeting focused on one or more specific issues. 
Since edits and changes in QML and Qt are comparatively easy to do, these changes can be implemented, tested and edited during the meeting and then presented to the rest of the group for feedback. 
During early stages the focus can be on mockups alone, and having two people of different skill sets focusing on the same task have proven to be not only effective but a remarkably stable process  avoiding the most common pitfalls in the interaction between designer and programmer. 

## Documentation
Developer targeted documentation that is built directly from the docs/ subdirectory of the git repository:
* [Kube Documentation](http://kube.readthedocs.io/en/latest/)
* [Sink Documentation](http://kube-sink.readthedocs.io/en/latest/)

## Contact Paths
Kube is developed within the kdepim community and we thus also use the kde-pim mailing list.
All planning and issue tracking is done on the kde phabricator instance, so that's a good starting point to familiarize yourself with the current development version.

The development team has weekly online meetings, so if you'd like to get involved there please write a mail to the mailinglist and we'll invite you (It's also fine if you would just like to join for a couple of meetings and see how things go, no pressure ;-) ).

* [PIM mailing list](mailto:kde-pim@kde.org)
* [Kube Phabricator](https://phabricator.kde.org/tag/kube/)
* [Sink Phabricator](https://phabricator.kde.org/tag/sink/)
* [Junior Jobs](https://phabricator.kde.org/project/board/173/)

## Source
* [Kube Repository](https://phabricator.kde.org/source/kube/browse/develop/): git://anongit.kde.org/kube
* [Sink Repository](https://phabricator.kde.org/source/sink/browse/develop/): git://anongit.kde.org/sink

## Building
We're using a docker environment to develop to ensure everyone works against the same environment. More information about that can be found in the [Kube Documentation](http://kube.readthedocs.io/en/latest/setting-up-dev-env/).

Nothing keeps you from just building everything natively though.

## Other Resources
* [Presentation during the Kolab Summit in 2016 by Christian Mollekopf](https://www.youtube.com/watch?v=KlZWZNtEptk)
* [Presentation during FOSDEM in 2017 by Christian Mollekopf](https://www.youtube.com/watch?v=FJW06CZJyUY)
