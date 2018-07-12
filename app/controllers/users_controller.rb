class UsersController < ApplicationController
  before_action :confirm_logged_in, except: [:new, :create]
  before_action :find_user, only: [:show, :edit, :update, :summary]


  def summary
    @funeral = @user.funeral
    render :summary
  end

  def new
    @user = User.new
  end

  def show
    @page = "menu" # what does this do?
  end

  def create
    @user = User.new(user_params)
    if @user.save
        # log in user
        session[:user_id] = @user.id
        session[:contacts] = []
        redirect_to user_path(@user)
    else
        render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end


  private

    def user_params
      params.require(:user).permit(
          :username, :email, :password, :password_confirmation)
    end

    def find_user
      @user = User.find(session[:user_id])
    end

end
