gulp = require('gulp')
$ = require('gulp-load-plugins')()
browserSync = require('browser-sync')

# BrowserSync
gulp.task 'browserSync', ->
  browserSync.init null,
    # open: false
    server:
      baseDir: './'

###
Tasks
###
# BrowserSync Reload
gulp.task 'browserSync-Reload', ->
  browserSync.reload()

# Sass
gulp.task 'sass', ->
  gulp
    .src 'css/*.sass'
    .pipe $.plumber()
    .pipe $.rubySass
      style: 'expanded'
      sourcemap: true
      sourcemapPath: '../css/'
      noCache: true
    .pipe $.autoprefixer 'last 2 version', 'ie 8', 'ie 9'
    .pipe gulp.dest 'css/'
    .pipe $.filter '**/*.css'
    .pipe browserSync.reload stream:true

# CoffeeScript
gulp.task 'coffee', ->
  gulp
    .src 'js/*.coffee'
    .pipe $.plumber()
    .pipe $.coffee()
    .pipe $.uglify()
    .pipe gulp.dest 'js/'
    .pipe browserSync.reload stream:true, once:true

# ImageMin
gulp.task 'imagemin', ->
  gulp
    .src 'img/**/*.{png,jpg,gif}'
    .pipe $.imagemin()
    .pipe gulp.dest 'dist/img/'
    .pipe browserSync.reload stream:true, once:true

# Watch
gulp.task 'default', ['browserSync', 'sass', 'coffee', 'imagemin'], ->
  gulp.watch './**/*.html', ['browserSync-Reload']
  gulp.watch 'css/**/*.sass', ['sass']
  gulp.watch 'js/**/*.coffee', ['coffee']
  gulp.watch 'img/**/*.{png,jpg,gif}', ['imagemin']