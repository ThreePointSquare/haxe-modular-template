class Main {
  static function main() {
    trace("Haxe is great!");
  }
}

import js.Browser.document;

class Example1 {
  static function main() {
    var message = 'Hello world!';
    document.body.innerHTML = '<h1>$message</h1>';
  }
}

// Example2.hx
class Example2 {
  static function main() {
    load(Foobar).then(function(_) {
      var f = new Foobar();
    }
  }
}

// Foobar.hx
class Foobar {
  public function new() {
    trace('Oh hi!');
  }
}



///- HMR only works in `-debug` mode,
//- only components in split bundles will reload

#if debug
Require.hot(function (_) {
	// Some lazy-loaded module has been reloaded (eg. 'view.js').
	// Class myapp.view.MyAppView reference has now been updated,
	// and new instances will use the newly loaded code!
	// It's time to re-render / replace the view.
	new MyAppView();
});
#end

import myapp.view.MyAppView;
...
Bundle.load(MyAppView).then(function(_) {
	// Class myapp.view.MyAppView can be safely used from now on.
	// It's time to render the view.
	new MyAppView();
});

Require.hot(?handler: String -> Void, ?forModule: String): Void;

var rootNode = ReactDOM.render(...);

    #if (debug && react_hot)
    ReactHMR.autoRefresh(rootNode);
    #end

#LAXY LOADER MODULE
Require.module('script').then(function(_) {
	// 'script.js' was loaded and evaluated.
});

#BUNDLES URLS
Require.jsPath + bundleName + Require.jsExt

#BASE URL
Require.jsPath = './'; // default
Require.jsPath = '/scripts/'; // subfolder
Require.jsPath = 'https://path-to-static-domain/'; // other domain

#SPEC EXNTES
Require.jsExt = '.js'; // default
Require.jsPath = '.js?c=' + Math.random(); // cache buster
Require.jsPath = '.js?v=' + VERSION; // versioning