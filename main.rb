# set up
include_recipe './setup/setup.rb'

# git
include_recipe './git/git.rb'

# zsh
include_recipe './zsh/zsh.rb'

# tmux
include_recipe './tmux/tmux.rb'

# apache
include_recipe './apache/apache.rb'

# dotfile
include_recipe './dotfile/dotfiles.rb'

# ruby
include_recipe './ruby/rbenv.rb'
include_recipe './ruby/ruby.rb'
include_recipe './ruby/rails.rb'

