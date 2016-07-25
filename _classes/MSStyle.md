---
title: MSStyle
summary: Represents all style attributes on a layer. Whatever kind of layer you have, each has a valid style object.
rels:
  - MSStyleBorder
  - MSStyleFill
  - MSStyleShadow
  - MSStyleInnerShadow
  - MSGraphicsContextSettings
---

Represents all style attributes on a layer. Whatever kind of layer you have, each has a valid style object.

Some layers will ignore unsupported attributes though (such as a text layer only supports one border even if style objects has more than one).

## Methods & Attributes

### borders(), fills(), shadows(), innerShadows()

Each returns an [MSArray](/reference/class/MSArray/) of each represented object. See [MSStyleBorder](/reference/class/MSStyleBorder/), [MSStyleFill](/reference/class/MSStyleFill/), [MSStyleShadow](/reference/class/MSStyleShadow/) and [MSStyleInnerShadow](/reference/class/MSStyleInnerShadow/) for details.

### addStylePartOfType(type)

Adds a new style of the specified `type`.

```
layer.style().addStylePartOfType(0) // To add a new fill
layer.style().addStylePartOfType(1) // To add a new border
layer.style().addStylePartOfType(2) // To add a new shadow
layer.style().addStylePartOfType(3) // To add a new inner shadow
```

### removeStyleFill(style), removeStyleBorder(style), removeStyleShadow(style), removeStyleInnerShadow(style)

If you want to remove a style from a layer, you can use these methods to do so.

For example, to remove a fill from a layer, you could do this:

```
var fill = context.selection[0].style().fills().firstObject()
context.selection[0].style().removeStyleFill(fill)
```

Alternatively, you can use the methods

- `removeStyleFillAtIndex(index)` to remove the fill at the specified index, or `removeAllStyleFills()` to remove all the fills.
- `removeStyleBorderAtIndex(index)` to remove the border at the specified index, or `removeAllStyleBorders()` to remove all the borders.
- `removeStyleShadowAtIndex(index)` to remove the shadow at the specified index, or `removeAllStyleShadows()` to remove all the shadows.
- `removeStyleInnerShadowAtIndex(index)` to remove the inner shadow at the specified index, or `removeAllStyleInnerShadows()` to remove all the inner shadows.

### contextSettings()

Contains and [MSGraphicsContextSettings](/reference/class/MSGraphicsContextSettings/) object that holds the opacity and blending mode of its layer
