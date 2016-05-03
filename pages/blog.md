---
title: Blog
permalink: /blog/
---

{% assign posts = site.posts | sort: 'date' %}
{% for post in posts %}
  <ul>
    <li><a href="{{post.url}}">{{post.title}}</a> — {{post.date | date: '%B %d, %Y'}}</li>
  <ul>
{% endfor %}
