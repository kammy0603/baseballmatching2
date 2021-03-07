class UsersController < ApplicationController
  before_action :search_user, only: [:index, :search]

  def index
    @users = User.all
    @user = User.where(category_id: params[:id]).order('created_at DESC')
  end

  def search
    @results = @p.result
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def search_user
    @p = User.ransack(params[:q])
  end

  def set_user_column
    @user_term_id = User.select('term_id').distinct  # 重複なくnameカラムのデータを取り出す
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar, :name, :name_kana, :birthday, :term_id, :level_id, :frequency_id, :registration_id, :prefecture_id,
                                 :city, :achievement)
  end
end
