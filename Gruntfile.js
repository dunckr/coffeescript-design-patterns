module.exports = function(grunt) {

  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-karma');

  grunt.initConfig({
    watch: {
      files:['src/*.coffee'],
      tasks:['coffee']
    },
    coffee: {
      src: {
        files: [{
          expand: true,
          cwd: 'src',
          src: '*.coffee',
          dest: '.tmp',
          ext: '.js'
        }]
      },
    },
    karma: {
      unit: {
          configFile: 'karma.conf.js',
          autoWatch: true
      }
    },
    clean: {
        dist: '.tmp'
    }
  });

  grunt.registerTask('server', 'watch');
  grunt.registerTask('test', 'karma');
};