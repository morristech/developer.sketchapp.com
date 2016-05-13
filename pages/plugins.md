---
title: Example Plugins
permalink: /examples/plugins/
---

The following examples should help you to get up & running with Plugin development.

Follow the main link for each one for an annotated view of the source code, or click on the download link to try the plugin out.

[Hello World](hello-world): A super-simple plugin which just makes a single "Hello World!" text layer in the current document ([download](/downloads/plugins/hello-world.zip)).

[Selection Changed](selection-changed): Displays a counter at the bottom of the canvas showing how many layers are selected. Illustrates how to respond to the SelectionChanged action, which is sent whenever the user selects/de-selects layers ([download](/downloads/plugins/selection-changed.zip)).

[SVGO Export](svgo-export): Post-processes any exported SVG files using svgo. Illustrates how to respond to the ExportSlices action, which is sent whenever an export occurs ([download](/downloads/plugins/svgo-export.zip)).
