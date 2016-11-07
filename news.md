---
layout: post
title: News
---

<table>
    {% for post in site.posts %}
    <tr>
        <td>{{ post.date | date_to_string }}&nbsp;&nbsp;&nbsp;</td>
        <td><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></td>
    </tr>
    {% endfor %}
</table>
