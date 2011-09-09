db = node[:app][:database]

gem_package "mysql"

include_recipe "mysql::server"
include_recipe "mysql::client"

mysql_database "create database" do
  host "#{db[:host]}"
  username "root"
  password node[:mysql][:server_root_password]
  database db[:database]
  action :create_db
end

mysql_database "create user" do
  host "#{db[:host]}"
  username "root"
  password node[:mysql][:server_root_password]
  action :query
  sql "GRANT ALL PRIVILEGES ON #{db[:database]}.* TO '#{db[:username]}'@'localhost' IDENTIFIED BY '#{db[:password]}'"
end