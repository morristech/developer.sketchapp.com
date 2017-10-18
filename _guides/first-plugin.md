---
title: Your First Plugin
summary: Basic concepts for plugin users.
permalink: /guides/first-plugin/
order: 110
---

This document will take you through creating your first Sketch plugin ("Hello World") and will explain the basic Sketch extensibility concepts.

In this walkthrough, you'll add a new command to Sketch which will display a simple "Hello World" message. Later in the walkthrough, you'll interact with the Sketch canvas and query for the user's currently selected layer.

## Prerequisites
You need [Node.js](https://nodejs.org/en/) installed and available in your `$PATH`. Node.js includes [npm](https://www.npmjs.com/), the Node.js Package Manager, which will be used to install the toolchain for sketch plugin developers.

## Generate a new plugin

The simplest way to add your own functionality to Sketch is through adding a command. A command registers a callback function which can be invoked from the Plugin menu or with a key binding.

We have written a small toolchain called [`skpm`](https://github.com/skpm/skpm) to help get you started. Install `skpm` and scaffold a new plugin:

```
npm install -g skpm

skpm create my-plugin

cd my-plugin
```

## Running your plugin

* Build the plugin: `npm run build`
* Launch Sketch, open a document
* Choose `Plugins` > `my-plugin` > `My Command`
* Congratulations! You've just created and executed your first Sketch command!

## The structure of a plugin

After running, the generated plugin should have the following structure:

```
.
├── .gitignore
├── README.md
├── src                         // sources
│   ├── manifest.json           // plugin's manifest
│   └── my-command.js           // source code of the command
├── node_modules
│   └── skpm                    // the sketch plugin developer toolchain
├── my-plugin.sketchplugin      // compilation output, the actual plugin
│   └── Contents
│       ├── Resources
│       └── Sketch
│           ├── manifest.json
│           └── my-command.js
└── package.json
```

Let's go through the purpose of all these files and explain what they do:

## The plugin manifest: manifest.json

* Please read the manifest.json [manifest reference](/guides/plugin-bundles/#manifest)
* Each Sketch plugin must have a manifest.json file that describes it and its capabilities.
* Sketch reads this file during start-up.

## Debugging your Extension

// TODO

## A simple change

In `src/my-command.js`, try replacing the command implementation to show the number of layers selected:

```js
export default function (context) {
  const selectedLayers = context.selection
  const selectedCount = selectedLayers.length

  if (selectedCount === 0) {
    context.document.show('No layers are selected.')
  } else {
    context.document.show(`${selectedCount} layers selected.`)
  }
}
```

Rebuild the plugin by running `npm run build`. Open a Sketch document, select some layers. When you run the my-plugin command, you should now see the count of selected layers.

> Pro tip: you can make it rebuild the plugin automatically by running `npm run watch`

## Publishing your Extension

Read about how to [Share a plugin](/guides/publishing-plugins/).

## Next steps
In this walkthrough, we've seen a very simple plugin.

If you'd like to read more generally about the plugin APIs, try these topics:

* [Extension API Overview](/reference/) - Learn about the full VS Code extensibility model.
* [Additional Plugin Examples](/examples/) - Take a look at our list of example plugin projects.
