module  CurrentUserConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_current_user
  end
  
  def ser_current_user
    if session[:user_id]
      @current_user= User.find(session[:use_id])
  end
end