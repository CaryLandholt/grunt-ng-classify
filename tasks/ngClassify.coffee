ngClassify = require 'ng-classify'

litcoffeeToCoffee = (content) ->
	content
	.split("\n")
	.filter (x) ->
		x.match "^    "
	.map (x) ->
		x.replace /^    /, ""
	.join "\n"

module.exports = (grunt) ->
	grunt.registerMultiTask 'ngClassify', 'Convert CoffeeScript classes to AngularJS modules', ->
		options = @options()

		@files.forEach (filePair) ->
			filePair.src.filter (filePath) ->
				unless grunt.file.exists filePath
					grunt.log.warn "Source file \" #{filePath}\" not found."
					false
				else
					true
			.map (filePath) ->
				if grunt.file.isMatch ["**/*.litcoffee","**/*.coffee.md"], filePath
					content = litcoffeeToCoffee grunt.file.read(filePath)
					filePair.dest = filePair.dest.replace /(litcoffee|coffee\.md)$/, "coffee"
				else
					content = grunt.file.read filePath
				hasCallback = !!options.callback
				isFunction  = hasCallback and options.callback instanceof Function
				opt         = if isFunction then options.callback(filePath) else options
				compiled    = ngClassify content, opt

				grunt.file.write filePair.dest, compiled
				grunt.verbose.ok "#{filePath} -> #{filePair.dest}"
