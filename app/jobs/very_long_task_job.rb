class VeryLongTaskJob < ApplicationJob
  queue_as :default

  after_perform :send_email

  after_perform do |job|
    user = job.arguments.first[:user]
    building_id = job.arguments.first[:building_id]
    send_email(user, building_id)
  end

  def perform(*args)
    sleep 60
    true # the task was completed correctly
  end

  private 

  def send_email(user, building_id)
    PurchaseMailer.with(user: user, building_id: building_id).purchase_email.deliver_later
  end
end
