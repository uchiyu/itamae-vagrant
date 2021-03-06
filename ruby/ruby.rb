# ruby install
execute 'ruby install' do
  # rbenvのコマンドはフルパスで
  command '~/.rbenv/bin/rbenv install 2.2.4'
  not_if '/home/vagrant/.rbenv/bin/rbenv versions | grep 2.2.4'
end

execute 'rbenv rehash' do
  # rbenvのコマンドはフルパスで
  command '~/.rbenv/bin/rbenv rehash'
end

execute 'set ruby version' do
  # rbenvのコマンドはフルパスで
  command '~/.rbenv/bin/rbenv global 2.2.4'
end

execute 'bundler install' do
  command 'sudo ~/.rbenv/shims/gem install bundler'
end

execute 'rubocop install' do
  command 'sudo ~/.rbenv/shims/gem install rubocop'
end


