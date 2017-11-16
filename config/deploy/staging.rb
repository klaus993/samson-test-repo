server "app11-stag.ec2-us-east-1.restorando.net", user: "deploy"

set :branch, ENV.fetch("REVISION", "staging")

fetch(:default_env).merge!(rack_env: :staging, rails_env: :staging)
