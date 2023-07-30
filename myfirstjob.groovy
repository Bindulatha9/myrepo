job('myfirstjobdsl') {
    description("My first job through DSL")
    scm {
        git ("https://github.com/Bindulatha9/Jenkins_Upgradev3.git" , 'master')
    }
    triggers {
        scm ('* * * * *')
    }
    steps {
        maven ('clean package' , 'java-tomcat-sample/pom.xml')
    }
    publishers {
        archieveArtifacts '**/*.war'
    }
}
