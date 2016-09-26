---
layout: single-page
title: Examples
permalink: /examples/
script: /js/search.js
---


The following examples should help you to get up & running with Plugin development.

Follow the main link for each one for an annotated view of the source code, or click on the links on the right to try the plugin out or view its github repo.

<table>
  <tbody>

  {% assign plugins = site.plugins | sort: 'title' %}
  {% for plugin in plugins %}
    {% assign info = site.data.plugins[plugin.title] %}
    <tr>
      <td><a href="{{plugin.url}}">{{info.name}}</a></td>
      <td>{{info.summary}}</td>
      <td><a href="/downloads/plugins/{{plugin.title}}.zip">download</a></td>
      <td><a href="https://github.com/BohemianCoding/plugins.examples.{{plugin.name}}">github</a></td>
    </tr>
  {% endfor %}

  </tbody>
</table>

## Code Snippets

We also have some [code snippets](/examples/code/) showing you how to perform various common tasks.

These do things in an older way and are generally being phased out in favour of the new [Sketch API](/reference/api), but we're leaving them up for now as they may still be useful.
