#cookbook to address issues in repo loading on ubuntu 12.04

execute "install 10gen repo" do 

	command  "echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list"
	not_if "grep 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart' -c /etc/apt/sources.list"

end

execute "update-apt" do 
	command "apt-get update -q -y"
end