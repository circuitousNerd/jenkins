require 'beaker-rspec'

hosts.each do |host|
  install_puppet
  on host, puppet('module', 'install', 'puppetlabs-stdlib'), { :acceptable_exit_codes => [0,1] }
end

RSpec.configure do |c|
  module_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))
  module_name = module_root
  c.formatter = :documentation
  c.before :suite do
    puppet_module_install(:source => module_root, :module_name => 'tollshield')
  end
end
