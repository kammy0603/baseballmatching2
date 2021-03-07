class Users::RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    super
    resource.avatar.attach(account_update_params[:avatar]) if account_update_params[:avatar].present?
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar, :name, :name_kana, :birthday, :term_id, :level_id, :frequency_id, :registration_id, :prefecture_id,
                                 :city, :achievement)
  end
end
