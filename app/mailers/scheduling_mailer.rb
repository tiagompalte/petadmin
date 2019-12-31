class SchedulingMailer < ApplicationMailer
  def scheduled(client, title, body)
    @body = body
    mail to: client.email, subject: title
  end
end