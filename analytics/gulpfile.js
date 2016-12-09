const gulp = require('gulp');
const gutil = require('gulp-util');
const source = require('vinyl-source-stream');
const babelify = require('babelify');
const browserify = require('browserify');

gulp.task('js', function() {
  browserify('./src/index.js')
    .transform(babelify, {presets: ["es2015"]})
    .bundle()
    .on('error', function(e){
      gutil.log(e); 
    })
    .pipe(source('analytics.min.js'))
    .pipe(gulp.dest('../site_example/vendor/assets/javascripts'))
});