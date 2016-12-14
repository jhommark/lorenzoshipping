var elixir = require('laravel-elixir');
require('laravel-elixir-ng-annotate');

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your Laravel application. By default, we are compiling the Sass
 | file for our application, as well as publishing vendor resources.
 |
 */

var jsPlugins = [
    '../dep/angular/angular.min.js',
    '../dep/angular-ui-router/release/angular-ui-router.min.js',
    '../dep/angular-resource/angular-resource.min.js',
    '../dep/textAngular/dist/textAngular-rangy.min.js',
    '../dep/textAngular/dist/textAngular-sanitize.min.js',
    '../dep/textAngular/dist/textAngular.min.js',
    '../dep/ng-lodash/build/ng-lodash.min.js',
    '../dep/moment/min/moment.min.js'
];
var cssPlugins = [
    '../dep/bootstrap/dist/css/bootstrap.min.css',
    '../dep/textAngular/dist/textAngular.css',
    '../dep/font-awesome/css/font-awesome.min.css'
];
var appScripts = [
    'client/**/*.modules.js',
    'client/**/*.js'
];
var appSass = [
    'app.scss'
];

elixir(function(mix) {
    mix.styles(cssPlugins, 'public/client/css/dep.css');
    mix.sass(appSass, 'public/client/css/app.min.css');
    mix.annotate(appScripts, 'public/client/js/annotated.js');
    mix.scripts(jsPlugins, 'public/client/js/dep.js');
    mix.scripts('../../../public/client/js/annotated.js', 'public/client/js/app.min.js');
});
