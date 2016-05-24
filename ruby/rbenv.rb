git '.rbenv' do
    destination '/home/vagrant/.rbenv'
    repository 'https://github.com/rbenv/rbenv.git'
    not_if 'test -d .rbenv'
end

directory 'plugins' do
    not_if 'test -d /home/vagrant/.rbenv/plugins'
end

git 'ruby-build' do
    destination '/home/vagrant/.rbenv/plugins/ruby-build'
    repository 'https://github.com/sstephenson/ruby-build.git'
    not_if 'test -d /home/vagrant/.rbenv/plugins/ruby-build'
end

execute 'change position' do
  command 'mv ruby-build /home/vagrant/.rbenv/plugins/ruby-build'
  not_if 'test -d /home/vagrant/.rbenv/plugins/ruby-build'
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
