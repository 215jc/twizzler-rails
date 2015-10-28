var gulp = require('gulp'),
    stylus = require('gulp-stylus'),
    poststylus = require('poststylus');

gulp.task('stylus', function () {
  gulp.src('app/assets/stylesheets/app.styl')
    .pipe(stylus({
      use: [
        poststylus(['rucksack-css', 'lost'])
      ]
    }))
    .pipe(gulp.dest('public/css'))
});

gulp.task('default', ['stylus']);