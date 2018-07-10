class AgentsController < ApplicationController
  before_action :confirm_logged_in
  before_action :find_agent, only: [:show, :edit, :update, :destroy]

  def index
    @agents = Agent.where(user_id: session[:user_id])
    @user = User.find(session[:user_id])
  end

  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(agent_params)
    @agent.user_id = session[:user_id]
    if @agent.save
      redirect_to @agent
    else
      render "new"
    end
  end

  def show
    # @agent = Agent.find(params[:id])
  end

  def edit
    # @agent = Agent.find(params[:id])
  end

  def update
    # @agent = Agent.find(params[:id])
    if @agent.update(agent_params)
      redirect_to @agent
    else
      render "edit"
    end
  end

  def destroy
    @agent.destroy
    redirect_to agents_path
  end

  private

  def agent_params
    params.require(:agent).permit(:name, :email, :user_id)
  end

  def find_agent
    @agent = Agent.find(params[:id])
  end



end
