user 'tdi' do
  action :create
  comment 'Test 1 User'
  home '/home/tdi'
  shell '/bin/bash'
  supports :manage_home => true
end

file '/home/tdi/.tdi' do
  action :create
  content 'bogus'
#  source 'tdi-bashfile' 
end
