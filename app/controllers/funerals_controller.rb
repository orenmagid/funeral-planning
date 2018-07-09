class FuneralsController < ApplicationController
  before_action :confirm_logged_in

  def new
    @funeral = Funeral.new

  end

  def create
      @funeral = Funeral.new(funeral_params)

    
    end



end
