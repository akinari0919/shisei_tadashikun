# Rails.rootを使用するために必要。なぜなら、wheneverは読み込まれるときにrailsを起動する必要がある
require File.expand_path(File.dirname(__FILE__) + "/environment")

# cronを実行する環境変数
rails_env = ENV['RAILS_ENV'] || :development

# cronを実行する環境変数をセット
set :environment, rails_env
# cronのログの吐き出し場所。ここでエラー内容を確認する
set :output, "#{Rails.root}/log/cron.log"

# 10分ごとに実行する
every 10.minutes do 
  rake 'push_line:push_line_message_morning'
end
