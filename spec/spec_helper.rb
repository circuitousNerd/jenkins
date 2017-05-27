require 'puppetlabs_spec_helper/module_spec_helper'

if ENV['DEBUG']
  Puppet::Util::Log.level = :debug
  Puppet::Util::Log.newdestination(:console)
end

RSpec.configure do |c|
  c.hiera_config = 'spec/fixtures/hiera/hiera.yaml'
  c.color  = true
  c.default_facts = {
    :osfamily => 'RedHat',
    :operatingsystemmajrelease => '6',
  }
end
