# Generated on 2014-09-05 using generator-reveal 0.3.9
module.exports = (grunt) ->

    grunt.initConfig

        watch:

            livereload:
                options:
                    livereload: true
                files: [
                    'index.html'
                    'slides/{,*/}*.{md,html}'
                    'js/*.js'
                ]

            index:
                files: [
                    'templates/_index.html'
                    'templates/_section.html'
                    'slides/list.json'
                ]
                tasks: ['buildIndex']

            coffeelint:
                files: ['Gruntfile.coffee']
                tasks: ['coffeelint']

            jshint:
                files: ['js/*.js']
                tasks: ['jshint']
        
        connect:

            livereload:
                options:
                    port: 9000
                    # Change hostname to '0.0.0.0' to access
                    # the server from outside.
                    hostname: 'localhost'
                    base: '.'
                    open: true
                    livereload: true

        coffeelint:

            options:
                indentation:
                    value: 4
                max_line_length:
                    level: 'ignore'

            all: ['Gruntfile.coffee']

        jshint:

            options:
                jshintrc: '.jshintrc'

            all: ['js/*.js']

        copy:

            dist:
                files: [{
                    expand: true
                    src: [
                        'slides/**'
                        'bower_components/**'
                        'js/**'
                    ]
                    dest: 'dist/'
                },{
                    expand: true
                    src: ['index.html']
                    dest: 'dist/'
                    filter: 'isFile'
                }]

        
        buildcontrol:

            options:
                dir: 'dist'
                commit: true
                push: true
                message: 'Built from %sourceCommit% on branch %sourceBranch%'
            pages:
                options:
                    remote: 'git@github.com:tpluscode/jsonld-hydra-presentation.git'
                    branch: 'gh-pages'

        shell:
            cloneGithubPages:
                command: [
                      'git clone https://${GH_OAUTH_TOKEN}@github.com/tpluscode/jsonld-hydra-presentation dist > /dev/null 2>&1',
                      'cd dist',
                      'git checkout -b gh-pages --quiet',
                      'git checkout gh-pages',
                      'rm -rf **',
                      'cd ..'
                    ].join('&&')

            pushGithubPages:
                command: [
                      'cd dist',
                      'git add -Af',
                      'git config --global user.email "tomasz@t-code.pl"',
                      'git config --global user.name "tpluscode"',
                      'git commit -am "pushing presentation built on travis ${TRAVIS_BUILD_NUMBER}"',
                      'git push https://${GH_OAUTH_TOKEN}@github.com/tpluscode/jsonld-hydra-presentation gh-pages --dry-run > /dev/null 2>&1',
                    ].join('&&')


    # Load all grunt tasks.
    require('load-grunt-tasks')(grunt)

    grunt.registerTask 'buildIndex',
        'Build index.html from templates/_index.html and slides/list.json.',
        ->
            indexTemplate = grunt.file.read 'templates/_index.html'
            sectionTemplate = grunt.file.read 'templates/_section.html'
            slides = grunt.file.readJSON 'slides/list.json'

            html = grunt.template.process indexTemplate, data:
                slides:
                    slides
                section: (slide) ->
                    grunt.template.process sectionTemplate, data:
                        slide:
                            slide
            grunt.file.write 'index.html', html

    grunt.registerTask 'test',
        '*Lint* javascript and coffee files.', [
            'coffeelint'
            'jshint'
        ]

    grunt.registerTask 'serve',
        'Run presentation locally and start watch process (living document).', [
            'buildIndex'
            'connect:livereload'
            'watch'
        ]

    grunt.registerTask 'server', ->
        grunt.log.warn
        'The `server` task has been deprecated.
         Use `grunt serve` to start a server.'
        grunt.task.run ['serve']

    grunt.registerTask 'dist',
        'Save presentation files to *dist* directory.', [
            'test'
            'buildIndex'
            'copy'
        ]

    
    grunt.registerTask 'deploy',
        'Deploy to Github Pages', [
            'shell:cloneGithubPages',
            'dist'
            'shell:pushGithubPages'
        ]
    

    # Define default task.
    grunt.registerTask 'default', [
        'test'
        'server'
    ]
