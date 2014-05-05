# [grunt](http://gruntjs.com/)-ng-classify [![Version][version-image]][version-url] [![Build Status][build-image]][build-url] [![Dependency Status][dependencies-image]][dependencies-url] [![License][license-image]][license-url]
> Convert CoffeeScript classes to [AngularJS](http://angularjs.org/) modules with [ng-classify](https://github.com/CaryLandholt/ng-classify)


## Table of Contents
* [Installing](#installing)
* [Examples](#examples)
	- [CoffeeScript](#coffeescript)
	- [JavaScript](#javascript)
* [API](#api)
* [Contributing](#contributing)
* [Changelog](#changelog)
* [License](#license)


## Installing
Install with [npm](https://npmjs.org/package/grunt-ng-classify)
```bash
$ npm install --save-dev grunt-ng-classify
```

## Examples


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


## API
See the [ng-classify docs](https://github.com/CaryLandholt/ng-classify)


### options
Type: `Object`
[ng-classify API](https://github.com/CaryLandholt/ng-classify#api)


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