{
  "name": "test",
  "description": "An environment for trying things out while learning Chef.",
  "cookbook_versions": {
  },
  "json_class": "Chef::Environment",
  "chef_type": "environment",
  "default_attributes": {
    "chef_client": {
      "interval": 60,
      "config": {
        "log_level": ":debug"
      }
    },
    "set_fqdn": "*.sheheitthey.com"
  },
  "override_attributes": {
  }
}
