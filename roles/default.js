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
    "recipe[chef-client]",
    "recipe[chef-client::delete_validation]",
    "recipe[aliases]"
  ],
  "env_run_lists": {
  }
}
