class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #justin
  before_action :authenticate_user!
end
