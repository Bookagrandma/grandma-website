class MissionMailer < ApplicationMailer


  def new_mission(mission)
    @mission = mission
    @benevole = @mission.benevole

    mail to: @benevole.email, 
    subject: "New mission from coucou"
  end
end
