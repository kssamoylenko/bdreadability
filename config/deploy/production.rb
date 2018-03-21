set :stage, :production
set :rails_env, :production

server 'shirykalov.ru', user: 'readability', roles: %w{web app db}
