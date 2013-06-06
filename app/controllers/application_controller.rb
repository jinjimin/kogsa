class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def redirect_to_sign_in
    redirect_to new_user_session_path, notice: 'You have to be a member to access the page'
  end
  helper_method :redirect_to_sign_in
  
end
