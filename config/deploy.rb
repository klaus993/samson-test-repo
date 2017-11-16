# config valid only for Capistrano 3.2.1
lock "3.2.1"

set :application, "dash"
set :repo_url, "git@github.com:klaus993/samson-test-repo.git"

set :local_user, -> { ENV.fetch("DEPLOYER_NAME", Etc.getlogin) }
set :deploy_to, "~/"

# Default value for :log_level is :debug
set :log_level, :info

namespace :deploy do
  run "touch ~/SAMSON_FILE"
end

