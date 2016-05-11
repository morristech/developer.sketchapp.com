---
layout: sidebar-page
title: Actions
permalink: /reference/action/
---

## List of actions
<table>
  <tbody>
  {% assign actions = site.actions | sort: 'title' %}
  {% for action in actions %}
    <tr>
      <td><a href="{{action.url}}">{{action.title}}</a></td>
      <td>{{action.summary}}</td>
    <tr>
  {% endfor %}
  </tbody>
</table>
