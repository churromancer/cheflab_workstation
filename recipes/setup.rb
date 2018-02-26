package 'vim' do
   action :install
end

package 'tree' do
   action :install
end

package 'ntp' do
   action :install
end

package 'git' do
   action :install
end

file '/etc/motd' do
   action :create
   content "This server is the property of Josh
   HOSTNAME: #{node['hostname']}
   IPADDRESS: #{node['ipaddress']}
   CPU: #{node['cpu']['0']['mhz']}
   MEMORY: #{node['memory']['total']}
"
   group 'root'
   owner 'root'
end
