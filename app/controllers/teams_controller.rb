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

  private

  def team_params
    params.permit(:user_id, :teamname, :prefecture_id, :year, :age_id, :frequency_id, :level_id, :offer_id, :achievement, :location, :teamimage)
  end
end
