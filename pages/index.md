---
title: Extending Sketch
permalink: /
---

We’ve worked very hard to make Sketch the dream “designer toolbox”, but everyone has slightly different needs, and there is a good chance that there’s a feature that you would like, which we’ve not implemented.

If you are interested in extending Sketch, you are in the right place. Here we present an outline of the Sketch extensibility documentation and how to quickly build your first Sketch plugin.

If you just want to use existing plugin, see [Plugin Marketplace](https://sketchapp.com/extensions/plugins/).

### What can you do with plugins?

Plugins in Sketch can do anything a user can do (and even more!). For example:

- Select layers inside a document, based on complex rules
- Manipulate layer properties
- Create new layers
- Export assets in all supported formats
- Interact with the user (ask for input, display output)
- Get data from external files and web services
- Interact with the clipboard
- Manipulate Sketch’s environment (editing guides, zoom, etc…)
- Automate existing features by calling menu options from plugins
- [design specs](https://github.com/utom/sketch-measure)
- [content generation](https://github.com/timuric/Content-generator-sketch-plugin)
- [perspective transformations](https://github.com/jamztang/MagicMirror)

The easiest way to see Sketch plugins in action is via the [Plugin Marketplace](https://sketchapp.com/extensions/plugins/). You can browse for useful plugins, install them to try them out and get an idea how you might extend Sketch for your own design scenarios.

### Writing an Extension

We created a small toolchain which makes it very easy to create a new plugin. It is great for starting out and you can also find existing plugin [examples](/examples/).

Extensions can be written in either TypeScript or JavaScript. VS Code offers a first class extension development experience where you can develop, build, run, test and debug all from within VS Code itself.

<!--

### Testing Extensions

We also have great support for writing and running tests for your plugin. You can easily create integration tests which call the Sketch APIs and test your code in a running Sketch instance.

-->

### Extension ideas

Lots of great community ideas for Sketch features are better implemented as plugins rather than as part of the core product. This way users can easily pick and choose the functionality they want, by installing the right set of plugins. The Sketch team tracks possible plugin as GitHub issues on the [plugin-request repository](https://github.com/sketchplugins/plugin-requests/issues). If you're looking for a great plugin to build, have a look at the issues.

## Next steps

* [Your First plugin](/guides/first-plugin) - Try creating a simple Hello World plugin.
* [Extension API](/reference/) - Learn about the Sketch extensibility APIs.
* [Extension Examples](/examples/) - A list of extension samples you can review and build.

### Help us improve!

If you find any error or omission on the documentation, or you’d like us to cover or clarify something, just [file an issue]({{site.github_repo}}/issues) and we’ll try to fix it. Of course, since all the content on this site is open source, you can help us improve by [suggesting an edit on GitHub]({{site.github_repo}}) (there's also an "Improve this page" link at the bottom of every page, in case you find something wrong while browsing the site).
