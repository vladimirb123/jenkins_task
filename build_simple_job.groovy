job('jenkins-task'){
  steps {
    shell('wget https://www.dropbox.com/s/cjbug9ddqrng39m/well-done.sh?dl=0 -O /tmp/well-done.sh')
    shell('chmod u+x /tmp/well-done.sh')
  }
  publishers {
    postBuildScripts{
      steps{
        shell('/tmp/well-done.sh')
      }
      onlyIfBuildSucceeds(true)
    }
  }
}