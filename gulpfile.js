var gulp = require("gulp");
var pug = require('gulp-pug');
var watch = require('gulp-watch');


gulp.task('html', function compileHtml(){
    return gulp.src('app/*.pug')
        .pipe(pug({
            "pretty": true
        }))
        .pipe(gulp.dest('public/'))
});


gulp.watch('app/*.pug', ['html']);

gulp.task('default', [ 'html']);