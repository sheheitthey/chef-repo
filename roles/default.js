{
  "name": "default",
  "description": "",
  "json_class": "Chef::Role",
  "default_attributes": {
  },
  "override_attributes": {
  },
  "chef_type": "role",
  "run_list": [
    "recipe[chef-client]",
    "recipe[aliases]"
  ],
  "env_run_lists": {
  }
}