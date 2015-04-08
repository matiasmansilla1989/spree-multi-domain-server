# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'spree-multi-domain-server'
set :repo_url,  'https://github.com/matiasmansilla1989/spree-multi-domain-server.git'
set :scm_passphrase, ""

set :branch, fetch(:branch, "master")

set :stages, ["staging", "production"]
set :default_stage, "staging"

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
