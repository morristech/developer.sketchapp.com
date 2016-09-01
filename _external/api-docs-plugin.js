var fs = require("fs");

exports.onStart = function(ev) {
  // take option
  preheaderPath = ev.data.option["header"];
};

// exports.onHandleConfig = function(ev) {
//   // modify config
//   ev.data.config.title = ...;
// };
//
// exports.onHandleCode = function(ev) {
//   // modify code
//   ev.data.code = ...;
// };
//
// exports.onHandleCodeParser = function(ev) {
//   // modify parser
//   ev.data.parser = function(code){ ... };
// };
//
// exports.onHandleAST = function(ev) {
//   // modify AST
//   ev.data.ast = ...;
// };
//
// exports.onHandleTag = function(ev) {
//   // modify tag
//   ev.data.tag = ...;
// };

exports.onHandleHTML = function(ev) {
  // modify HTML
  // var preheader = fs.readFileSync(preheaderPath).toString();
  // wrappedPreheader = "<preheader>\n" + preheader + "\n</preheader>\n\n"
  match = ev.data.html.match(/body.*>([^]*)<\/body/)
  if (match) {
    ev.data.html = "---\n\n---\n\n" + match[1];
  }
};

// exports.onComplete = function(ev) {
//   // complete
// };
