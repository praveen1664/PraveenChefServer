# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "abhinav"
client_key               "#{current_dir}/abhinav.pem"
validation_client_name   "a-validator"
validation_key           "#{current_dir}/a-validator.pem"
chef_server_url          "https://192.168.235.131/organizations/a"
cookbook_path            ["#{current_dir}/../cookbooks"]
ssl_verify_mode :verify_none
