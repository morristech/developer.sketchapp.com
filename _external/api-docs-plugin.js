

var fs = require("fs");

exports.onStart = function(ev) {
  // take option
  scriptsPath = ev.data.option["scripts"];
};

exports.onHandleHTML = function(ev) {
  // extract everything inside the <body> tag and throw the rest away
  match = ev.data.html.match(/body.*>([^]*)<\/body/)
  if (match) {
    ev.data.html = "---\nlayout: api-page\n---\n\n" + match[1];
  }
};
