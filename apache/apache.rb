package "apache2"

service "apache2" do
  action [:enable, :start]
end

# index.html配置
remote_file "/var/www/html/index.html" do
  owner "root"
  group "root"
  source "../index.html"
end
