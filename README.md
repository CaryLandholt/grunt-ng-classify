# [grunt](http://gruntjs.com/)-ng-classify
[![License][license-image]][license-url]
[![Version][version-image]][version-url]
[![Build Status][build-image]][build-url]
[![Dependency Status][dependencies-image]][dependencies-url]
> Convert CoffeeScript classes to [AngularJS](http://angularjs.org/) modules with [ng-classify](https://github.com/CaryLandholt/ng-classify)  
> Write less JavaScript. Write less CoffeeScript. Write less Angular.
>
> Watch the [screencast](https://www.youtube.com/watch?v=28gUTu9vnB4)


## Install
Install with [npm](https://npmjs.org/package/grunt-ng-classify)
```bash
$ npm install grunt-ng-classify
```


## Usage


### CoffeeScript
```coffee
module.exports = (grunt) ->
	grunt.loadNpmTasks 'grunt-ng-classify'

	grunt.initConfig
		ngClassify:
			app:
				files: [
					cwd: 'src'
					src: '**/*.coffee'
					dest: 'dest'
					expand: true
				]
				options:
					appName: 'app'
```


### JavaScript
```javascript
module.exports = function (grunt) {
	grunt.loadNpmTasks('grunt-ng-classify');

	grunt.initConfig({
		ngClassify: {
			app: {
				files: [
					{
						cwd: 'src',
						src: '**/*.coffee',
						dest: 'dest',
						expand: true
					}
				],
				options: {
					appName: 'app'
				}
			}
		}
	});
};
```


## Table of Contents
* [Install](#isntall)
* [Usage](#examples)
	- [CoffeeScript](#coffeescript)
	- [JavaScript](#javascript)
* [API](#api)
* [Contributing](#contributing)
* [Changelog](#changelog)
* [License](#license)


## API
See the [ng-classify docs](https://github.com/CaryLandholt/ng-classify)


### options
*Optional*  
Type: `Object`  
Default:  `undefined`  
see [ng-classify API](https://github.com/CaryLandholt/ng-classify#api)


#### options.callback
Type: `Function`  
Default:  `undefined`  

Dynamically creates options via the function callback.  The function takes in the filePath and returns the options.  *Note:  overrides other options*
```coffee
module.exports = (grunt) ->
	grunt.loadNpmTasks 'grunt-ng-classify'

	grunt.initConfig
		ngClassify:
			app:
				files: [
					cwd: 'src'
					src: '**/*.coffee'
					dest: 'dest'
					expand: true
				]
				options:
					callback: (filePath) ->
						return if filePath.indexOf('administrator') isnt -1
							{appName: 'admin'}

						{appName: 'app'}
```

```javascript
module.exports = function (grunt) {
	grunt.loadNpmTasks('grunt-ng-classify');

	grunt.initConfig({
		ngClassify: {
			app: {
				files: [
					{
						cwd: 'src',
						src: '**/*.coffee',
						dest: 'dest',
						expand: true
					}
				],
				options: {
					callback: function (filePath) {
						if (filePath.indexOf('administrator') !== -1) {
							return {appName: 'admin'};
						}
						
						return {appName: 'app'};
					}
				}
			}
		}
	});
};
```


## Contributing
See [CONTRIBUTING.md](CONTRIBUTING.md)


## Changelog
See [CHANGELOG.md](CHANGELOG.md)


## License
See [LICENSE](LICENSE)


[build-image]:            http://img.shields.io/travis/CaryLandholt/grunt-ng-classify.svg?style=flat
[build-url]:              http://travis-ci.org/CaryLandholt/grunt-ng-classify

[dependencies-image]:     http://img.shields.io/gemnasium/CaryLandholt/grunt-ng-classify.svg?style=flat
[dependencies-url]:       https://gemnasium.com/CaryLandholt/grunt-ng-classify

[license-image]:          http://img.shields.io/badge/license-MIT-blue.svg?style=flat
[license-url]:            LICENSE

[version-image]:          http://img.shields.io/npm/v/grunt-ng-classify.svg?style=flat
[version-url]:            https://npmjs.org/package/grunt-ng-classify