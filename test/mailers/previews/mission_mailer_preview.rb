# Preview all emails at http://localhost:3000/rails/mailers/mission_mailer
class MissionMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/mission_mailer/new_mission
  def new_mission
    MissionMailer.new_mission(Mission.last)
  end

end
