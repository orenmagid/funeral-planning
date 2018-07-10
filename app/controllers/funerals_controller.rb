class FuneralsController < ApplicationController
  before_action :confirm_logged_in
  before_action :find_funeral, only: [:show, :edit, :update]

  def new
    @funeral = Funeral.new

  end

  def show
    @user = User.find(session[:user_id])
    @funeral = @user.funerals[0]

  end

  def create
    @funeral = Funeral.new(funeral_params)
    if @funeral.update(funeral_params)
      @user = User.find(session[:user_id])
      @user.funerals << @funeral
      redirect_to funeral_path(@funeral)
    else
      render :new
    end
  end

    def edit
      @user = User.find(session[:user_id])
      @funeral = @user.funerals[0]

    end

    def update
      if @funeral.update(funeral_params)
        redirect_to funeral_path(@funeral)
      else
        render :edit
      end
    end

    def destroy
      @user = User.find(session[:user_id])
      @funeral = @user.funerals[0]
      @funeral.destroy
      flash[:notice] = "Your funeral preferences have been deleted."
      redirect_to user_path(session[:user_id])
    end



  private

  def funeral_params

    params.require(:funeral).permit(
        :disposition, :disposition_other, :officiant, :eulogist_1, :eulogist_2, :service_type, :religion_id, :funeral_home_id, funeral_home_attributes: [:name, :phone, :address])
  end

  def find_funeral
    @funeral = Funeral.find(params[:id])

  end



end
