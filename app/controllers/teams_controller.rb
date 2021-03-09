class TeamsController < ApplicationController
  def top
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @teams = Team.all
  end

  def search
    @results = @p.result
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    team = Team.find(params[:id])
    if team.update(team_params)
       redirect_to root_path
    else
      render :update
    end
  end

  private

  def team_params
    params.permit(:user_id, :teamname, :prefecture_id, :year, :age_id, :frequency_id, :level_id, :offer_id, :achievement, :location, :teamimage)
  end

  def search_team
    @p = Team.ransack(params[:q])
  end

  def set_team_column
    @team_term_id = Team.select('term_id').distinct
  end
end
