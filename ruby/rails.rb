# nodejsが必要
execute 'nodejs install' do
  command 'sudo apt-get -y install nodejs'
end

execute 'change permission .rbenv' do
  command 'chmod 777 -R ~/.rbenv'
end

# rails install
execute 'rails install' do
  command 'sudo ~/.rbenv/shims/gem install rails'
end

execute 'change permission .rbenv' do
  command 'chmod 777 -R ~/.rbenv'
end

directory '/home/vagrant/rails_project' do
  mode '755'
  owner 'root'
  group 'root'
end

