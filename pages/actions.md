---
layout: sidebar-page
title: Actions
permalink: /actions/
---

{{site.actions}}

## List of actions
<table>
  <tbody>
  {% assign actions = site.actions %}
  {% for action in actions %}
    <tr>
      <td><a href="{{action.url}}">{{action.title}}</a></td>
      <td>{{action.summary}}</td>
    <tr>
  {% endfor %}
  </tbody>
</table>
