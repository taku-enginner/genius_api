set -o errexit

bundle install
yarn install # 追加: Yarnを使用している場合
npm install  # 追加: npmを使用している場合

# Babelプラグインのインストール
npm install --save-dev @babel/plugin-proposal-private-methods

bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate