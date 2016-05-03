---
layout: post
title:  "An Update From The Plugin Elves..."
categories: scripting update
---
We've been hard at work over the last few weeks here at Bohemian Towers on some updates to Sketch's Plugin system.

Some of these will be rolling out along with the upcoming 3.8 release, and others will come later, but in both cases, we wanted to give everyone in the developer community some early warning.

## Deprecated APIs

As many of you are aware, we quite often have to change the code internally, which sometimes means that APIs which we’ve publicised become deprecated. Until now we’ve tended to just leave the old APIs in the code too, and have them spit out a console message saying that they are deprecated.

Moving forwards, we intend to start actually removing these APIs. We’ll give you a version or two’s notice (so if we deprecate something in 3.7, we won’t remove it until 3.9), but you should be aware that deprecated will no longer mean “you can ignore this” and will now mean “you really should stop using this”.


## Legacy Plugins

On a similar note, back in version 3.3 we introduced a new bundle format for plugins. It has lots of benefits, but to ease the transition, we continued to support old single-file plugins.

In order to simplify our code and allow us to add new scripting features, we intend to deprecate and then remove support for old plugins. Starting with version 3.9, any commands provided by old-style plugins will be grouped under a “Legacy” heading in the menu.

Following on from that, a later version of Sketch will no longer load old plugins.

We encourage you to move your plugins over to the new format now! It’s a pretty simple job, and it will future-proof you.

(Note to self: mention that old-style plugins won’t be featured on our website)


## Action API

With 3.8, we are introducing the much-requested ability for plugins to be able to respond to actions that the user performs in Sketch.


We will post some documentation and example plugins on this later, but this is an early warning.

We want to make it clear at this point that this is definitely version 1.0 of action support, and more will follow. We are aware that there are some inconsistencies with the way it works right now, and not all the things a user can do will be available to begin with (and some things may never be available, for performance reasons).

This feature should greatly expand the range of things that plugins can usefully do, and we look forward to seeing what you do with it. Please send us feedback on how it works for you, and what you’d like to see change.


## Scripting API

As a few of you may have noticed, we made a tentative step in 3.7 towards adding a Javascript-only API which plugins can call.

The intention with this is to make a smaller, more stable set of functionality available to plugins directly from Javascript. Each time we release a new version of Sketch we will try to ensure that the API continues to work. This should insulate plugins using the API from the current situation where they are forced to use internal Sketch code, and then get broken when we change that code.

Version 3.8 does contain a slightly updated version of this, but we don’t consider it ready for prime-time, and it isn’t documented properly. The design of the API also definitely isn’t stable at this point, and we don’t recommend using it yet as the names of classes and methods are likely to change.

Consider this an early warning that it is coming, and again, please send us feedback on how you’d like to see it work.
