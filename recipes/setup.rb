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
   content 'This server is the property of Josh'
   group 'root'
   owner 'root'
end
