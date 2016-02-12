#dotfiles
package 'emacs'

git '.dotfiles' do
  repository 'https://github.com/uchiyu/.dotfiles.git'
end

execute 'set dotfiles' do
  command 'sh .dotfiles/install.sh'
end

