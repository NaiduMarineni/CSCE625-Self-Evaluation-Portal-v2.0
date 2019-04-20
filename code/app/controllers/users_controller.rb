class UsersController < ApplicationController
    # skip_before_action :require_valid_user!, except: [:user_logout]
    before_action :reset_session, except: [:user_signup, :user_signup_post]

    def user_login
    end

    def user_login_post
        reset_session
        @user = User.find_by(email: user_params[:email])
        
        if user && @user.authenticate(user_params[:password]) # && @user.activated # need to fix user activated
          # if authentication works redirect to home page
          # user_params[:remember_me] == '1' ? remember(@user) : forget(@user)
          session[:user_id] = @user.id
          flash[:success] = 'Welcome back!'
          redirect_to root_path
        else
        # if authentication fails then redirect to user_login page 
          if user #&& !@user.activated #need to fix this
            flash.now[:danger] = 'Account not activated. Please check with your registered email!.'
          else
            flash.now[:danger] = 'Invalid email/password combination.'
            # flash[:error] = 'Invalid email/password combination'
          end
          redirect_to user_login_path
        end
    end

    def user_signup
        @user = User.new
    end

    def user_signup_post
        @user = User.new(user_params)
        if @user.save
          # Handle a successful save.
          flash[:success] = "Welcome to the 625 Self-Evaluation!"
          # start session here
          redirect_to root_path
        else
          render 'new'
        end
    end

    def user_logout
      reset_session
    end

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end