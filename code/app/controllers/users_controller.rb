class UsersController < ApplicationController
    def user_login
    end

    def user_login_post
        user = User.find_by(email: params[:session][:email])
        if user && user.authenticate(params[:session][:password]) && user.activated
          # if authentication works redirect to Q&A home page
          session[:user_id] = user.id
          params[:session][:remember_me] == '1' ? remember(user) : forget(user)
          redirect_back_or user
        #   redirect_to(session[:forwarding_url] || default)
        #   session.delete(:forwarding_url)
        else
        # if authentication fails then redirect to user_login page 
          if user && !user.activated
            flash.now[:danger] = 'Account not activated. Please sign up first.'
          else
            flash.now[:danger] = 'Invalid email/password combination.'
          end
          render 'new'
        end
    end

    def user_signup
        @user = User.new
    end

    def user_signup_post
        @user = User.new(user_params)    # Not the final implementation!
        if @user.save
          # Handle a successful save.
          flash[:success] = "Welcome to the 625 Self-Evaluation!"
          redirect_to :action=>'home', controller=>'static_pages'
        else
          render 'new'
        end
    end

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

end