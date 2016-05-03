---
title: Blog
permalink: /blog/
---

{% assign posts = site.blog-posts | sort: 'date' %}
{% for post in posts %}
  <tr>
    <td><a href="{{post.url}}">{{post.title}}</a> — {{post.date | date: '%B %d, %Y'}}</td>
  <tr>
{% endfor %}
