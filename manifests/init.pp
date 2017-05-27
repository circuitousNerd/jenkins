class jenkins () {
  
  file { 'jenkins.repo':
    path   => '/etc/yum.repos.d/jenkins.repo',
    source => 'http://pkg.jenkins-ci.org/redhat/jenkins.repo',
  }

  exec { 'install_key':
    path        => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
    command     => 'sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key',
    refreshonly => true,
  }

  package { 'jenkins':
    ensure => latest,
  }

  File['jenkins.repo'] ~> Exec['install_key'] ->
  Package['jenkins']  
}