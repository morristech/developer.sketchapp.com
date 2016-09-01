exports.onStart = function(ev) {
  // take option
  ev.data.option;
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
  modified = ev.data.html.replace("<header>", "<preheader>\n</preheader>\n\n<header>");
  ev.data.html = modified;
};

// exports.onComplete = function(ev) {
//   // complete
// };
