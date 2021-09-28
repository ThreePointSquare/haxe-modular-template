// index.js
var Foobar;
function Example() { }
Example.main = function () {
    loadScript("Foobar.js").then(function () {
        Foobar = $hx_scope.Foobar;
        var f = new Foobar();
    })
}
Example.main();

// Foobar.js
function Foobar() {
    console.log("Oh hi!");
}
$hx_scope.Foobar = Foobar;