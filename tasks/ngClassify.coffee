ngClassify = require 'ng-classify'

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
				content     = grunt.file.read filePath
				hasCallback = !!options.callback
				isFunction  = hasCallback and options.callback instanceof Function
				opt         = if isFunction then options.callback(filePath) else options
				compiled    = ngClassify content, opt

				grunt.file.write filePair.dest, compiled
				grunt.verbose.ok "#{filePath} -> #{filePair.dest}"