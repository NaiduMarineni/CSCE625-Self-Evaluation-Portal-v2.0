class ApplicationController < ActionController::Base
  # before_action :require_valid_user!
  def current_user
    if !session[:user_id].blank?
        @user ||= User.find(session[:user_id])
    end
  end

  def require_valid_user!
      if current_user.nil?
          flash[:error] = 'You must be logged in to access that page!'
          redirect_to user_login_path
      end
  end

  protect_from_forgery with: :exception
  include SessionsHelper
  # include UsersHelper
  # def hello
  #   #render html: "hello, world!"
  # end
end
