class AccessController < ApplicationController



  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def menu
    # display text & links
  end

  def login
    # login form
  end

  def attempt_login
    # this logic is really confusing and seems to be some spaghetti
    # code. Might be worth a second look to refactor and cut down
    # on duplicate variables or unnecessary logic
    if params[:username].present? && params[:password].present?
      found_user = User.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
        @user = authorized_user
      end
    end

    if authorized_user
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username

      # flash[:notice] = "You are now logged in."
      redirect_to(home_path)
    else
      flash.now[:notice] = "Invalid username/password combination."
      render :login
    end

  end

  def logout
    session.clear
    # flash[:notice] = 'Logged out'
    redirect_to(access_login_path)
  end

end
