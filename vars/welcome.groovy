// vars/welcome.groovy
def call(String name = 'World') {
    // Any valid pipeline steps can be called from here
    echo "Welcome, ${name}, to the DevOps team!"
}

