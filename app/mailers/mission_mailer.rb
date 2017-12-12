class MissionMailer < ApplicationMailer

  def new_mission(mission)
    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement

    mail to: @benevole.email,
      subject: "New mission from #{@benevole.email} and #{@etablissement.email}"
  end

  def update_mission(mission)
    @mission = mission
    @benevole = @mission.benevole

    mail to: @benevole.email,
      subject: "Update mission from #{@benevole.email}"
  end

    def destroy_mission(mission)
    @mission = mission
    @benevole = @mission.benevole

    mail to: @benevole.email,
      subject: "Destroy mission from #{@benevole.email}"
  end
end
