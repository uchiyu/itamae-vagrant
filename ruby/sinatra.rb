# sinatra install
execute 'sinatra install' do
  command 'sudo ~/.rbenv/shims/gem install sinatra'
end

execute 'sinatra-contrib install' do
  command 'sudo ~/.rbenv/shims/gem install sinatra-contrib'
end

execute 'sqlite3 install' do
  command 'sudo ~/.rbenv/shims/gem install sqlite3'
end

directory '/home/vagrant/sinatra_project' do
  mode '755'
  owner 'root'
  group 'root'
end
