module.exports = function(grunt){
  grunt.initConfig({
    sass: {                              // Task 
      dist: {                            // Target 
        options: {                       // Target options 
          style: 'expanded'
        },
        files: {                         // Dictionary of files 
          'widgets.css': 'widgets.scss'
        }
      }
    },
    watch: {
      scripts: {
        files: '*.scss',
        tasks: ['sass'],
        options: {
          debounceDelay: 250,
        },
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.registerTask('default', ['sass']);
}
