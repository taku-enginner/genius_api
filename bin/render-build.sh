set -o errexit

export NODE_OPTIONS=--openssl-legacy-provider

bundle install
yarn install # Yarnを使用している場合
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate