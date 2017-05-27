class jenkins () {
  
  file { 'jenkins.repo':
    path   => '/etc/yum.repos.d/jenkins.repo',
    source => 'http://pkg.jenkins-ci.org/redhat/jenkins.repo',
  }

  package { 'jenkins':
    ensure => latest,
  }
  
}