---
title: MSStyle
summary: Represents all style attributes on a layer. Whatever kind of layer you have, each has a valid style object.
rels:
  - MSStylePartCollection
  - MSStyleBorder
  - MSStyleFill
  - MSStyleShadow
  - MSStyleInnerShadow
  - MSGraphicsContextSettings
---

Represents all style attributes on a layer. Whatever kind of layer you have, each has a valid style object.

Some layers will ignore unsupported attributes though (such as a text layer only supports one border even if style objects has more than one).

## Methods & Attributes

### borders, fills, shadows, shadows, innerShadows

Each returns an [MSStylePartCollection](/reference/class/MSStylePartCollection/) that contains an array of each represented object. See [MSStyleBorder](/reference/class/MSStyleBorder/), [MSStyleFill](/reference/class/MSStyleFill/), [MSStyleShadow](/reference/class/MSStyleShadow/) and [MSStyleInnerShadow](/reference/class/MSStyleInnerShadow/) for details.

### contextSettings

Contains and [MSGraphicsContextSettings](/reference/class/MSGraphicsContextSettings/) object that holds the opacity and blending mode of its layer
