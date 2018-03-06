package 'tree' do
  action:install
 end
package 'git' do
   action:install
 end

package 'ntp' do
   action:install
  end

file '/opt/ckrcp/test1_file.txt' do
  content 'Om Ganeshay Namah'
  action :create
  owner 'root'
  group 'root'
end

file '/opt/ckrcp/hostdetail_file.txt' do 
content "Please find the server details 
   HOSTNAME: #{node['hostname']}
   IPADDRESS: #{node['ipaddress']}
   CPU: #{node['cpu']['0']['mhz']}
   MEMORY: #{node['memory']['total']}"
   owner 'root'
   group 'root'
   action 'create'
end

