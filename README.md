# developer.sketchapp.com

This repository powers the development site for [Sketch](http://sketchapp.com), that lives at [developer.sketchapp.com](http://developer.sketchapp.com).

## Contribute!

We've made this repository public so you can contribute to it. If you find a typo, or an error, or want to improve the content, feel free to send us a pull request. Also, if there's anything you'd like to see covered or documented, file an issue and we'll do it for you.

We use [Jekyll](http://jekyllrb.com) as our content backend, so make sure to read their docs if you need help understanding how the system works.

## Setup

If you want to get the site working locally, you'll need to have [node](https://nodejs.org/en/) and [bundler](http://bundler.io) installed. Once you have them, run this:

```
npm install --global gulp
bundle install --path _vendor
npm install
```

and then run

```
gulp
```

to start the server and open a browser automatically.

Note: you may find issues with nokogiri when running `bundle install`. If that's the case, check the troubleshooting tips on [Nokogiri's page](http://www.nokogiri.org/tutorials/installing_nokogiri.html#mac_os_x)
