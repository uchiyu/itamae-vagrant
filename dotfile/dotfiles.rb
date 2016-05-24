#dotfiles
package 'emacs'

git '.dotfiles' do
  user "vagrant"
  repository 'https://github.com/uchiyu/.dotfiles.git'
  not_if 'test -d .dotfiles'
end

execute 'set dotfiles' do
  user "vagrant"
  command 'sudo sh /home/vagrant/.dotfiles/install.sh'
end

execute 'change permisson' do
  command 'sudo chmod -R 777 .vim'
end

#execute 'change permisson' do
#  command 'sudo chmod 777 .zshrc'
#end


