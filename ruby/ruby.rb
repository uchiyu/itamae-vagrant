# ruby install
execute 'ruby install' do
    # rbenvのコマンドはフルパスで
    command '~/.rbenv/bin/rbenv install 2.2.4'
end

execute 'set ruby version' do
    # rbenvのコマンドはフルパスで
    command '~/.rbenv/bin/rbenv global 2.2.4'
end
