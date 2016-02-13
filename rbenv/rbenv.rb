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

remote_file "/home/vagrant/.zshenv" do
  owner "root"
  group "root"
  source "../.zshenv"
end

execute 'change permission .zshenv' do
  command 'chmod 777 .zshenv'
end

execute 'ruby setting' do
  command 'apt-get install -y zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev'
end

execute 'sqlite install' do
  command 'apt-get -y install sqlite3 libsqlite3-dev'
end
