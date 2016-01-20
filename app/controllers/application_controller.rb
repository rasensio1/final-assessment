class ApplicationController < ActionController::Base
  helper_method :current_user, :hiok
  protect_from_forgery with: :exception

  def hiok
    "HiOK"
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
end
