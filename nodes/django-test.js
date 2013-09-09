{
  "name": "django-test",
  "chef_environment": "test",
  "normal": {
    "tags": [

    ],
    "postgresql": {
      "password": {
         "postgres": "postgres_password"
      }
    }
  },
  "run_list": [
    "role[default]",
    "recipe[postgresql::server]"
  ]
}
