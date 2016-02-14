# set up
include_recipe './setup.rb'

# git
include_recipe './git.rb'

# zsh
include_recipe './zsh.rb'

# tmux
include_recipe './tmux.rb'

# apache
include_recipe './apache.rb'

# dotfile
include_recipe './dotfiles.rb'

# ruby
include_recipe './rbenv/rbenv.rb'
include_recipe './ruby/ruby.rb'
include_recipe './ruby/rails.rb'

