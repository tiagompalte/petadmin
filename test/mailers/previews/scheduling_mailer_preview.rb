# Preview all emails at http://localhost:3000/rails/mailers/scheduling_mailer
class SchedulingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/scheduling_mailer/scheduled
  def scheduled
    SchedulingMailer.scheduled
  end

end
