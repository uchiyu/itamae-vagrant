# MeCab install
execute 'MeCab install' do
  command 'sudo apt-get -y install mecab mecab-ipadic-utf8'
end

execute 'neologd clone' do
  command 'sudo git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git'
  not_if 'test -d mecab-ipadic-neologd'
end

execute 'neologd install' do
  cwd '/home/vagrant/mecab-ipadic-neologd'
  command './bin/install-mecab-ipadic-neologd -n'
  not_if 'mecab -v'
end
