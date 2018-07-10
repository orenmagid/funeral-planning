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
  end

  def edit
  end

  def update
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
    params.require(:agent).permit(:name, :email)
  end

  def find_agent
    # I changed this, since it was finding the agent with an id that matched the user's id.
    # @user = User.find(session[:user_id])
    # @agent = @user.agents[0]
    @agent = Agent.find(params[:id])
  end



end
