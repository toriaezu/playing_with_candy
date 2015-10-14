
require "pp"

searched_volumes = search(:node, "mount_point:/vol/ebi").first

puts "volumes:"
pp searched_volumes
puts "=================================================================="
pp node[:ebs]
pp node.to_hash
pp node.inspect
