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
			<p style="text-transform: uppercase;">{{ site.description }}</p>
			<ul class="actions">
				<li><a href="#one" class="button next scrolly">Get Started</a></li>
			</ul>
		</div>
	</div>
</section>

<!-- Main -->
<div id="main">

<section id="one">
	<div class="inner">
        <p>"Kube is a modern communication and collaboration client built with QtQuick on top of a high performance, low resource usage core. It provides online and offline access to all your mail, contacts, calendars, notes, todo's and more.  With a strong focus on usability, the team works with designers and UX experts from the ground up, to build a product that is not only visually appealing but also a joy to use."</p>

        <p>We are an active project spearheaded by Kolab Systems in collaboration with the KDE community. We initially focus on email and calendaring only to ensure that the core features of the application are in place before going forward.</p>
        <ul class="actions">
            <li><a href="getit.html" class="button">Get it!</a></li>
            <li><a href="join.html" class="button">Join!</a></li>
        </ul>

	</div>
</section>

<!-- Two -->
<section id="two" class="spotlights">
	<section>
		<a href="features.html" class="image">
            <img src="assets/images/people.jpg" alt="" data-position="center center" />
		</a>
		<div class="content">
			<div class="inner">
				<header class="major">
					<h3>Features in Kube</h3>
				</header>
				<p>Communication and collaboration within large groups and spread over several time zones is complex and something of the norm in modern projects and the existing solutions available are not up to that challenge. Kube is a way to simplify and make communication elegant again by focusing on the key needs of users instead of filling it with any feature that comes to mind. Our strict focus on what is actually needed instead of what is wanted brings a new way of collaboration between group members and a simpler way of handling communication.</p>
				<ul class="actions">
					<li><a href="features.html" class="button">Learn more</a></li>
				</ul>
			</div>
		</div>
	</section>
	<section>
		<a href="join.html" class="image">
            <img src="assets/images/pens.jpg" alt="" data-position="center center" />
		</a>
		<div class="content">
			<div class="inner">
				<header class="major">
					<h3>Join Kube!</h3>
				</header>
				<p>There is a wealth of opportunities to take part in the Kube project. As a dedicated Open Source project we intend to give people in the wider open source community, developers and testers, the chance to work with us to improve the state of communication and collaboration in Open Source. For testers, the chance to have early access to the project and test its limits and for developers the challenge that an application the size and breadth of Kube can bring. In this section you can find further information about Kube's technical aspects and find promising areas to work with.</p>
				<ul class="actions">
					<li><a href="join.html" class="button">Join!</a></li>
				</ul>
			</div>
		</div>
	</section>
</section>

<section id="stuff">
	<div class="inner">
		<header class="major">
			<h2>Latest news</h2>
		</header>
        <p>
        Blog Posts from the community:
        <br/> <a href="https://blogs.kolabnow.com/tag/kube">by Kolab Now</a>
        <br/> <a href="https://cmollekopf.wordpress.com/tag/kube/">by Christian Mollekopf</a>
        <br/> <a href="https://mbohlender.wordpress.com">by Michael Bohlender</a>
        </p>
        <table>
            {% for post in site.posts limit:3 %}
            <tr>
                <td>{{ post.date | date_to_string }}&nbsp;&nbsp;&nbsp;</td>
                <td><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></td>
            </tr>
            {% endfor %}

            <tr>
                <td></td>
                <td><a href="news.html">More...</a></td>
            </tr>
        </table>
	</div>
</section>

</div>

