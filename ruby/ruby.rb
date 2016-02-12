git 'rbenv' do
    repository 'https://github.com/rbenv/rbenv.git'
end

execute 'change permission rbenv' do
  command 'chmod 777 -R rbenv'
end

execute 'change name' do
  command 'mv rbenv .rbenv'
end

execute 'ruby build' do
  command 'git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build'
end

execute 'make .zshenv' do
  command 'touch .zshenv'
end

execute 'change permission .zshenv' do
  command 'chmod 777 .zshenv'
end

execute 'rbenv pass' do
  command "echo export PATH=$HOME/.rbenv/bin:$PATH >> ~/.zshenv"
end

execute 'rbenv init' do
  user "root"
  command "echo eval $(rbenv init -) >> ~/.zshenv"
end

