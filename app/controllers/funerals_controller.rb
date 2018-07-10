class FuneralsController < ApplicationController
  before_action :confirm_logged_in
  before_action :find_funeral, only: [:show, :edit, :update]

  def new
    @funeral = Funeral.new

  end

  def show

  end

  def create
    @funeral = Funeral.new(funeral_params)
    if @funeral.update(funeral_params)
      redirect_to funeral_path(@funeral)
    else
      render :new
    end

    def edit
      @funeral = Funeral.find(params[:id])

    end

    def update

      if @funeral.update(funeral_params)
        redirect_to funeral_path(@funeral)
      else
        render :edit
      end

    end


  end

  private

  def funeral_params
    params.require(:funeral).permit(
        :disposition, :officiant, :eulogist_1, :eulogist_2, :service_type, :religion_id, :funeral_home_id, funeral_home_attributes: [:name, :phone, :address])
  end

  def find_funeral
    @funeral = Funeral.find(params[:id])

  end



end
