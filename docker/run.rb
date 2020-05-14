#!/usr/bin/env ruby

def set_authorized_keys(ssh_key)
  authorized_keys = '/root/.ssh/authorized_keys'
  f = File.open( authorized_keys, "w" )
  f << ssh_key
  f.chmod(0644)
  f.close
end

def start_sshd
  set_authorized_keys(ENV['ssh_key'])
  system('/usr/bin/ssh-keygen -A')
  system('/usr/sbin/sshd -D')
end

start_sshd
