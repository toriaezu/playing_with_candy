
require "pp"

current_node = search(:aws_opsworks_instance, "self:true").first
layer_id = current_node["layer_ids"].first
volume_configurations = search(:aws_opsworks_layer, "layer_id:#{layer_id}").first["volume_configurations"]

pp volume_configurations
