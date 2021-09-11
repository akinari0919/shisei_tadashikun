namespace :reminder_task do
  desc "ここにタスクのお題"
  task :koko => :environment do
    webhook = WebhookController.new
    puts webhook.kokodayo
  end
end