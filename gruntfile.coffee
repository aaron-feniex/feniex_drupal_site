module.exports = (grunt) ->
  "use strict"
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    slim:
      dev:
        options:
          pretty: true
        files: [
          expand: true,
          flatten: false,
          cwd: 'web/themes/custom/feniex/src/apps/',
          src: ['**/*.slim'],
          dest: 'web/themes/custom/feniex/apps/',
          ext: '.html'
        ]
    sass:
      site:
        options:
          compass: true
        files: [{
          expand: true
          cwd:'web/themes/custom/feniex/src/sass/'
          src:['*.sass']
          dest: 'web/themes/custom/feniex/css/'
          ext: '.css'
        }]
      app:
        options:
          compass: true
        files: [{
          expand: true
          cwd:'web/themes/custom/feniex/src/apps/'
          src:['**/*.sass']
          dest: 'web/themes/custom/feniex/apps'
          ext: '.css'
        }]
    coffee:
      compileJoined:
        options:
          runtime:'window'
        files: [
          'web/themes/custom/feniex/js/feniex.js': ['web/themes/custom/feniex/src/coffee/*.coffee']
        ]
      glob_to_multiple:
        expand: true,
        flatten: false,
        cwd: 'web/themes/custom/feniex/src/apps/',
        src: ['**/*.coffee'],
        dest: 'web/themes/feniex/apps/',
        ext: '.js'
    watch:
      options:
        livereload:7374
      compass_site:
        files: ['web/themes/custom/feniex/src/sass/**/*.sass']
        tasks: ['sass:site']
      coffee_site:
        files: ['web/themes/custom/feniex/src/coffee/*.coffee']
        tasks: ['coffee:compileJoined']
      compass_app:
        files: ['web/themes/custom/feniex/src/apps/**/*.sass']
        tasks: ['sass:app']
      coffee_app:
        files: ['web/themes/custom/feniex/src/apps/**/*.coffee']
        tasks: ['coffee:glob_to_multiple']

  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-sass"
  grunt.loadNpmTasks "grunt-iced-coffee"

  grunt.registerTask 'default','compass_site','coffee_site', 'coffee_app', 'watch'
