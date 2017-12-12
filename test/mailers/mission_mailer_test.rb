require 'test_helper'

class MissionMailerTest < ActionMailer::TestCase
  test "new_mission" do
    mail = MissionMailer.new_mission
    assert_equal "New mission", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
