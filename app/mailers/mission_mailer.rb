class MissionMailer < ApplicationMailer



  def new_mission_b(mission)

    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement
    @bag = 'bookagrandma@gmail.com'
    if @benevole != nil
      mail to: @benevole.email,
        subject: "Votre commentaire (#{mission.title}) sur l'établissement : #{@etablissement.name} a bien été ajouté.",
        bcc: @bag
    else
    end
  end



  def new_mission_e(mission)
    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement
    @bag = 'bookagrandma@gmail.com'
      mail to: @etablissement.email,
        subject: "Vous avez un nouveau commentaire (#{mission.title}) sur la page de votre établissement.",
        bcc: @bag
  end



  def update_mission_b(mission)
    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement
    @bag = 'bookagrandma@gmail.com'
    if @benevole != nil
      mail to: @benevole.email,
        subject: "Vous avez modifié votre proposition #{mission.title}",
        bcc: @bag
    else
    end
  end

  def update_mission_e(mission)
    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement
    @bag = 'bookagrandma@gmail.com'
      mail to: @etablissement.email,
        subject: "La proposition #{mission.title} a été modifiée",
        bcc: @bag
  end



  def destroy_mission_b(mission)
    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement
    @bag = 'bookagrandma@gmail.com'
    if @benevole != nil
      mail to: @benevole.email,
        subject: "Vous avez supprimé votre mission : #{mission.title}",
        bcc: @bag
    else
    end
  end

  def destroy_mission_e(mission)
    @mission = mission
    @benevole = @mission.benevole
    @etablissement= @mission.etablissement
    @bag = 'bookagrandma@gmail.com'
      mail to: @etablissement.email,
        subject: "La proposition #{mission.title} a été supprimé",
        bcc: @bag
  end


end
