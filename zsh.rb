package 'zsh' do
  action :install
end

user 'set zsh' do
  username 'vagrant'
  shell '/bin/zsh'
end

