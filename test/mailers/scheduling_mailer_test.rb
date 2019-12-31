require 'test_helper'

class SchedulingMailerTest < ActionMailer::TestCase
  test "scheduled" do
    mail = SchedulingMailer.scheduled
    assert_equal "Scheduled", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
