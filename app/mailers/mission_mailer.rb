class MissionMailer < ApplicationMailer

  def new_mission_b(mission)
    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement
    @bag = 'bookagrandma@gmail.com'

    mail to: @benevole.email,
      subject: "Nouveau commentaire sur l'établissement : #{@etablissement.name}",
      bcc: @bag
  end


  def new_mission_e(mission)
    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement
    @bag = 'bookagrandma@gmail.com'

    mail to: @etablissement.email,
      subject: "Vous avez un nouveau commentaire de #{@benevole.firstname} #{@benevole.lastname}",
      bcc: @bag
  end



  def update_mission_b(mission)
    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement
    @bag = 'bookagrandma@gmail.com'

    mail to: @benevole.email,
      subject: "Vous avez modifié votre proposition #{mission.title}",
      bcc: @bag
  end

    def update_mission_e(mission)
    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement
    @bag = 'bookagrandma@gmail.com'

    mail to: @etablissement.email,
      subject: "#{@benevole.firstname} #{@benevole.lastname} a modifié sa proposition : #{mission.title}",
      bcc: @bag
  end




  def destroy_mission_b(mission)
    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement
    @bag = 'bookagrandma@gmail.com'

    mail to: @benevole.email,
      subject: "Vous avez supprimé votre mission : #{mission.title}",
      bcc: @bag
  end

    def destroy_mission_e(mission)
    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement
    @bag = 'bookagrandma@gmail.com'

    mail to: @etablissement.email,
      subject: "#{@benevole.firstname} #{@benevole.lastname} a supprimé sa proposition : #{mission.title}",
      bcc: @bag
  end


end
