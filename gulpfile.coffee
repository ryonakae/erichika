# Define
gulp         = require 'gulp'
autoprefixer = require 'gulp-autoprefixer'
browserSync  = require 'browser-sync'
cache        = require 'gulp-cache'
coffee       = require 'gulp-coffee'
concat       = require 'gulp-concat'
imagemin     = require 'gulp-imagemin'
minifyCss    = require 'gulp-minify-css'
plumber      = require 'gulp-plumber'
pngcrush     = require 'imagemin-pngcrush'
rimraf       = require 'rimraf'
runSequence  = require 'run-sequence'
sass         = require 'gulp-ruby-sass'
slim         = require 'gulp-slim'
streamqueue  = require 'streamqueue'
uglify       = require 'gulp-uglify'


# Clean Build Directory
gulp.task 'clean', (cb) ->
  rimraf 'build/', cb


# Clear Cache
gulp.task 'clear', (done) ->
  cache.clearAll done


# BrowserSync
gulp.task 'browserSync', ->
  browserSync.init null,
    # open: false
    # notify: false
    server:
      baseDir: 'build/'


# Slim
gulp.task 'slim', ->
  gulp
    .src 'source/**/*.slim'
    .pipe slim
      bundler: true
    .pipe gulp.dest 'build/'
    .pipe browserSync.reload
      stream: true


# Sass
gulp.task 'sass', ->
  gulp
    .src 'source/assets/stylesheets/**/*.{sass,scss}'
    .pipe plumber()
    .pipe sass
      style: 'expanded'
      require: ['bourbon', 'neat']
      # noCache: true
      bundleExec: true
    .pipe autoprefixer 'last 2 version', 'ie 8', 'ie 9'
    .pipe minifyCss
      keepSpecialComments: 0
    .pipe gulp.dest 'build/assets/stylesheets/'
    .pipe browserSync.reload
      stream: true


# CoffeeScript
gulp.task 'coffee', ->
  gulp
    .src 'source/assets/javascripts/**/*.coffee'
    .pipe plumber()
    .pipe coffee()
    .pipe uglify()
    .pipe gulp.dest 'build/assets/javascripts/'
    .pipe browserSync.reload
      stream: true


# JavaScript
gulp.task 'javaScript', ->
  streamqueue objectMode: true,
      gulp.src 'source/assets/javascripts/core/jquery.min.js'
      gulp.src 'source/assets/javascripts/lib/*.js'
    .pipe concat 'lib.js'
    # .pipe uglify()
    .pipe gulp.dest 'build/assets/javascripts/'
    .pipe browserSync.reload
      stream: true


# ImageMin
gulp.task 'imageMin', ->
  gulp
    .src 'source/assets/images/**/*'
    .pipe cache imagemin
      optimizationLevel: 4
      progressive: true
      interlaced: true
      svgoPlugins: [{removeViewBox: false}]
      use: [pngcrush()]
    .pipe gulp.dest 'build/assets/images/'
    .pipe browserSync.reload
      stream: true


# Copy
gulp.task 'copy', ->
  gulp
    .src 'source/.htaccess'
    .pipe gulp.dest 'build/'


# Watch
gulp.task 'watch', ->
  # Slim
  gulp.watch 'source/**/*.slim', ->
    gulp.start 'slim'
  # Sass
  gulp.watch 'source/assets/stylesheets/**/*.{sass,scss}', ->
    gulp.start 'sass'
  # CoffeeScript
  gulp.watch 'source/assets/javascripts/**/*.coffee', ->
    gulp.start 'coffee'
  # JavaScript
  gulp.watch 'source/assets/javascripts/lib/*.js', ->
    gulp.start 'javaScript'
  # Image
  gulp.watch 'source/assets/images/**/*', ->
    gulp.start 'imageMin'


# Default Task
gulp.task 'default', ->
  runSequence 'clean', ['slim', 'sass', 'coffee', 'javaScript', 'imageMin', 'copy'], 'browserSync', 'watch'