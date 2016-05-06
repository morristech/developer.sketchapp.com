---
title: Blog
permalink: /blog/
---

{% assign posts = site.posts | sort: 'date' %}
<ul>
{% for post in posts %}
    <li><a href="{{post.url}}">{{post.title}}</a> — {{post.date | date: '%B %d, %Y'}}</li>
{% endfor %}
</ul>
