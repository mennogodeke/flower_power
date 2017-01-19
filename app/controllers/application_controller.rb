class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user! # deze functie zorgt ervoor dat alle pagina's geblokkeerd zijn tot er is ingelogd.
  # Met de skip_before action op andere controllers kunnen we specifiek deze functie overslaan
end
