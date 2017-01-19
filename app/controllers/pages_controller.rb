class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home, :show] # sla de before action die is beschreven in de applicationcontroller over op de volgende methodes

  def show #functie om statische pagina's te laten zien
    render template: "pages/#{params[:page]}"
  end
  def home #methode om de route voor de home pagina te genereren

  end

  def contact #methode om de route voor de contact pagina te genereren

  end
end
