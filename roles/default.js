{
  "name": "default",
  "description": "Default minimalistic role that applies to every node.",
  "json_class": "Chef::Role",
  "default_attributes": {
  },
  "override_attributes": {
  },
  "chef_type": "role",
  "run_list": [
    "recipe[chef-client::config]",
    "recipe[chef-client::delete_validation]",
    "recipe[chef-client]",
    "recipe[hostname]",
    "recipe[aliases]"
  ],
  "env_run_lists": {
  }
}
