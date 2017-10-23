---
layout: single-page
title: Reference
permalink: /reference/
script: /js/search.js
---

Sketch gives you full access to its internals. This gives you immense power (and with great power comes great responsibility!).

That doesn't mean that we are gonna freeze our codebase and we do change the intervals regularly. As a result you need to accept that your plugins may well break regularly.

We do realise that this is not of course ideal. That is why we support JavaScript API sitting between the internals and your plugin. We hope that it covers 90% of the use cases. If it doesn't, you can always tap into the internals at your own risks.

The pages below contain brief descriptions of all the actions that your plugin can listen for, and some of the key Sketch classes that they can interact with. This is the JavaScript API and it is stable across Sketch releases.

- [Javascript API](/reference/api)
- [Actions](/reference/action)

Even though we are not going to document the internals, there are 3 sources of information you can look into:

- [The official AppKit document](https://developer.apple.com/documentation/appkit?language=objc): this is Apple framework Sketch is built upon.
- [Foundation](https://developer.apple.com/documentation/foundation?language=objc): more essential Apple classes and services.
- [The Sketch Headers](https://github.com/abynim/Sketch-Headers) (Thanks @abynim 🙏): this is the headers of all the classes used by Sketch. If your plugin breaks with a new release because you used a method that was removed, you can check the diffs to find a replacement.

Again, the last link is to use at your own risk, we are not going to document are freeze any of this but we want to give you the power to do anything.

To understand how to use those Objective-C classes, look at the [CocoaScript document](/guides/cocoascript/).
