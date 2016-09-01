



# To seperate out the ntp log file from the default syslog set the
# attributes below
default['ntp']['log_enabled'] = true
default['ntp']['log_location'] = '/var/lib/ntp/ntp.log'

