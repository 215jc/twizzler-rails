var gulp = require('gulp'),
    stylus = require('gulp-stylus'),
    postcss = require('gulp-postcss')
    poststylus = require('poststylus');
    rucksack = require('rucksack-css');
    watch = require('gulp-watch');

gulp.task('watch', function () {
   gulp.watch('app/assets/**/*.styl', ['stylus']);
});

gulp.task('stylus', function () {
    gulp.src('app/assets/stylesheets/app.styl')
      .pipe(stylus({
        use: [
          poststylus(['rucksack-css', 'lost'])
        ]
      }))
      .pipe(gulp.dest('public/css'))
});

gulp.task('default', ['stylus', 'watch']);