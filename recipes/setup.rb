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

