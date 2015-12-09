instance = search("aws_opsworks_instance", "self:true").first 

puts "those are my layers #{instance[:layer_ids].first}"
puts "my hostname wooop #{instance[:hostname]}"
puts "whatever #{instance[:public_ip]}"

puts "the available rest #{instance.inspect}"
