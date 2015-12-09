

def ticktick
  instance = search("aws_opsworks_instance", "self:true").first 
  puts "those are my layers #{instance[:layer_ids].first}"
  puts "my hostname wooop #{instance[:hostname]}"
  puts "whatever #{instance[:public_ip]}"

  puts "the available rest #{instance.inspect}"
rescue => e
  puts "nah nah that is not polite #{e.backtrace.join("\n")} -- #{e.message}"
end

def beer_on_a_stick
  search_string = "hostname:`hostname`"
  instance = search("aws_opsworks_instance", search_string).first 
  
  puts "beer on a stick returns #{instance.inspect}"
rescue => e
  puts "nah nah that is not polite #{e.backtrace.join("\n")} -- #{e.message}"
end

ticktick
beer_on_a_stick
