---
title: Blog
layout: blog-index
permalink: /blog/
---
<section>
{% assign posts = site.posts | sort: 'date' %}
{% for post in posts %}
    <article class="post">
      <header>
        <h2><a href="{{post.url}}">{{post.title}}</a></h2>
        <p class="meta">{{ post.date | date: "%b %-d, %Y" }}{% if post.author %} — {{ post.author }}{% endif %}{% if post.meta %} — {{ post.meta }}{% endif %}</p>
      </header>
      {{ post.content }}
    </article>
{% endfor %}
</section>