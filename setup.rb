# timezoneの設定
execute 'set timezone' do
  command 'timedatectl set-timezone Asia/Tokyo'
end

# firewalld停止,無効化
service 'firewalld' do
  action [:disable, :stop]
end

# apt-getの更新
execute 'update apt-get' do
  user 'root'
  command 'sudo apt-get update'
end
