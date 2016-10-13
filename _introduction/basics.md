---
title: Plugin Basics
summary: Basic concepts for plugin users.
permalink: /introduction/
order: 100
---

## What is a Plugin?

On disk, a Plugin is just a folder arranged in a [standard layout](/introduction/plugin-bundles/).

It contains one or more scripts. Each script defines one or more commands which extend Sketch in some way. It can also contain any other optional resources (such as images) that the commands make use of to do whatever they do.

Plugin scripts are written using [CocoaScript](https://github.com/ccgus/CocoaScript), which is a variation of JavaScript.

<div class="embed-container">
  <iframe src="https://www.youtube.com/embed/TlSfoGN6WRw?rel=0&amp;showinfo=0&amp;color=white" frameborder="0" allowfullscreen=""></iframe>
</div>

## Terminology

Before we get any further, let’s define a bit of terminology.

- *Plugin*: a collection of *Scripts*, *Commands* and other resources grouped together as a discrete unit
- *Plugin Bundle*: the folder on disk containing the files that make up the *Plugin*
- *Action*: something the user does (selecting a menu, or changing the document) which triggers a *Command*
- *Command*: a Plugin can define more than one command; typically each one is associated with a different menu or keyboard shortcut, and causes a different *Handler* to be executed.
- *Handler*: a CocoaScript function which executes some code to implement a *Command*.
- *Script*: a [CocoaScript](https://github.com/ccgus/CocoaScript) file containing one or more *Handlers* which implement one or more *Commands*.

## How Do I Make A Plugin?

By now, probably you’re wondering how to get started writing your own.

Often the best place to start is with some existing examples. With this in mind, we’ve included [Some Example Plugins](/examples/) along with this documentation.

These aren’t intended to actually be massively useful additions to Sketch, but they illustrate how to get a Plugin working, and can be copied to form the basis of something new.

When you feel ready to dive in and make something of your own, you can find out how to lay it out in [Plugin Bundles](/introduction/plugin-bundles), and how to write scripts for it in [Plugin Scripts](/introduction/plugin-scripts/).

The [Resources](/resources/) page also lists some good places to find other Plugins.
