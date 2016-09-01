
yum_package 'ntp' do
  action :install
end

service 'ntpd' do
  action [:enable, :start]
end

yum_package 'ntpdate' do
  action :install
end

template '/etc/ntp.conf' do
  source 'ntp.conf.erb'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :restart, 'service[ntpd]'
end
