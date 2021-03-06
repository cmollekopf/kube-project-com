---
layout: landing
title: Home
landing-title: Kube
description: A description that is not shown anywhere.
nav-menu: no
---

<!-- Banner -->
<section id="banner" class="major">
    <div class="inner">
        <header class="major">
            <h1>{{ page.landing-title }}</h1>
        </header>
        <div class="content">
            <p>{{ site.description }}</p>
            <ul class="actions">
                <li><a href="getit.html" class="button next scrolly">Get it</a></li>
            </ul>
        </div>
    </div>
</section>

<!-- Main -->
<div id="main">

<section id="one">
    <div class="inner">
        <p>"Kube is a modern communication and collaboration client built to just work. It provides online and offline access to all your mail, contacts and calendars. With a strong focus on usability, the team works with designers and UX experts from the ground up, to build a product that is not only visually appealing but also a joy to use."</p>

        <div class="flexslider">
            <ul class="slides">
                {% for image in site.data.carousel %}
                <li>
                    <a href="{{ image.url }}">
                        <img src="{{ image.url }}">
                        <p class="flex-caption">{{ image.caption }}</p>
                    </a>
                </li>
                {% endfor %}
            </ul>
        </div>

        <p>We are an active project spearheaded by Kolab Systems in collaboration with the KDE community. We initially focus on email and calendaring only to ensure that the core features of the application are in place before going forward.</p>
        <ul class="actions">
            <li><a href="getit.html" class="button">Get it!</a></li>
            <li><a href="join.html" class="button">Join!</a></li>
        </ul>

    </div>
</section>

<section id="tiles" class="tiles">
    <article>
            <header class="major">
                    <h3><a href="features.html" class="link">Secure</a></h3>
                    <p>Kube comes with end-to-end encryption based on GPG.</p>
            </header>
    </article>
    <article>
            <header class="major">
                    <h3><a href="features.html" class="link">Distraction free</a></h3>
                    <p>There when you need it, out of your way when you don't.</p>
            </header>
    </article>
    <article>
            <header class="major">
                    <h3><a href="features.html" class="link">Simple</a></h3>
                    <p>Enter your credentials and you're good to go. No configuration required.</p>
            </header>
    </article>
    <article>
            <header class="major">
                    <h3><a href="join.html" class="link">Free Software</a></h3>
                    <p>Kube is, and always will be, fully Open Source. Join us!</p>
            </header>
    </article>
</section>

<section id="stuff">
    <div class="inner">
        <header class="major">
            <h2>More information</h2>
        </header>
        <p>
        Blog Posts from the community:
        <br/> <a href="https://blogs.kolabnow.com/tag/kube">by Kolab Now</a>
        <br/> <a href="https://cmollekopf.wordpress.com/tag/kube/">by Christian Mollekopf</a>
        <br/> <a href="https://mbohlender.wordpress.com">by Michael Bohlender</a>
        </p>
    </div>
</section>

</div>

