class SchedulingJob < ApplicationJob
  queue_as :emails

  def perform(client, title, body)
    SchedulingMailer.scheduled(client, title, body).deliver_now
  end
end
