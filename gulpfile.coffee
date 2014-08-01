gulp = require('gulp')
$ = require('gulp-load-plugins')()
browserSync = require('browser-sync')

# BrowserSync
gulp.task 'BrowserSync', ->
  browserSync.init(null, {
    server:
      baseDir: './'
  })

# Tasks
gulp.task 'BrowserSync-Reload', ->
  browserSync.reload()

# Watch
gulp.task 'default', ['BrowserSync'], ->
  gulp.watch './**/*.html', ['BrowserSync-Reload']