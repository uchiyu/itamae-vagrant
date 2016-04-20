# sinatra install
execute 'sinatra install' do
  command 'sudo ~/.rbenv/shims/gem install sinatra'
end

directory '/home/vagrant/sinatra_project' do
  mode '755'
  owner 'root'
  group 'root'
end
