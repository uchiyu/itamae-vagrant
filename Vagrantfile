# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure VAGRANTFILE_API_VERSION do |config|
  config.vm.box = 'ubuntu/trusty64'
  config.vm.hostname = 'uchiyu'
  config.vm.network :private_network, ip: '192.168.11.48'

  config.vm.provision :itamae do |itamae|
    itamae.sudo = true
    itamae.recipes = ['./setup.rb']
    itamae.recipes = ['./git.rb']
    itamae.recipes = ['./apache.rb']
  end
end
