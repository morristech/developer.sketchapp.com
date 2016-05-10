## Example Plugins Style Guide

This is a guide for our own benefit, with few rules that we should follow when writing example plugins.


### Manifest

The manifest should list keys in a sensible order, eg:

```
"name" : "SelectionChanged Example",
"description" : "Example plugin which handles the SelectionChanged action.",
"version" : "1.0",
"identifier" : "com.sketchapp.examples.selection-changed",
"author" : "Sam Deane",
"authorEmail" : "sam@sketchapp.com",
"commands" : [
```

The bundle id should be com.sketchapp.examples.<name>, where <name> is the name of the plugin. Hyphens in the <name> part are fine, eg com.sketchapp.examples.selected-layers.

The author email should be a sketchapp.com address.
