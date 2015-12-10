

def ticktick
  instance = search("aws_opsworks_instance", "self:true").first 
  Chef::Log.info "those are my layers #{instance[:layer_ids].first}"
  Chef::Log.info "my hostname wooop #{instance[:hostname]}"
  Chef::Log.info "whatever #{instance[:public_ip]}"

  Chef::Log.info "the available rest #{instance.inspect}"
rescue => e
  Chef::Log.info "nah nah that is not polite #{e.backtrace.join("\n")} -- #{e.message}"
end

def beer_on_a_stick
  hostname = `hostname`
  Chef::Log.info "hostname is #{hostname}"
  Chef::Log.info "ohai.. node['fqdn'] #{node['fqdn']} node['hostname'] #{node['hostname']}"
  search_string = "hostname:`hostname`"
  instance = search("aws_opsworks_instance", search_string).first
  instance2 = search("aws_opsworks_instance", node['hostname']).first

  
  Chef::Log.info "beer on a stick returns #{instance.inspect}"
  Chef::Log.info "ohai beer on a stick returns #{instance2.inspect}"
rescue => e
  Chef::Log.info "nah nah that is not polite #{e.backtrace.join("\n")} -- #{e.message}"
end

search_string = "hostname:`hostname`"
instance = search("aws_opsworks_instance", search_string).first 
  
Chef::Log.info "beer on a stick returns #{instance.inspect}"

ticktick
beer_on_a_stick
