class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def check_login_status
    unless user_signed_in?
      redirect_to new_user_session_path, notice: 'You have to be a member to access the page'
    end
  end

  def authenticate_user
    if user_signed_in? && !current_user.admin
      @post = Post.find(params[:id])
      unless current_user.id == @post.user_id
        redirect_to :back, notice: "You're not authorized."
      end
    end
  end

  def authenticate_admin
    if user_signed_in? && !current_user.admin
      redirect_to new_user_session_path, notice: 'Please log in as an admin'
    end
  end
  
end
