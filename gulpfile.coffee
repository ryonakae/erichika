gulp = require('gulp')
$ = require('gulp-load-plugins')()
browserSync = require('browser-sync')

# BrowserSync
gulp.task 'browserSync', ->
  browserSync.init(null, {
    # open: false
    server:
      baseDir: './'
  })

###
Tasks
###
# BrowserSync Reload
gulp.task 'browserSync-Reload', ->
  browserSync.reload()

# Compass
gulp.task 'compass', ->
  gulp
    .src 'css/*.sass'
    .pipe $.plumber()
    .pipe $.compass({
      config_file: 'config.rb'
      css: 'css/'
      sass: 'css/'
    })
    .pipe $.autoprefixer('last 2 versions', 'ie 8', 'ie 9')
    .pipe gulp.dest 'css/'
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
gulp.task 'default', ['browserSync', 'compass', 'coffee', 'imagemin'], ->
  gulp.watch './**/*.html', ['browserSync-Reload']
  gulp.watch 'css/**/*.sass', ['compass']
  gulp.watch 'js/**/*.coffee', ['coffee']
  gulp.watch 'img/**/*.{png,jpg,gif}', ['imagemin']