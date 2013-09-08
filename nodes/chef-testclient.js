{
  "name": "chef-testclient",
  "chef_environment": "test",
  "normal": {
    "tags": [

    ]
  },
  "run_list": [
    "role[default]",
    "recipe[apache2]"
  ]
}
