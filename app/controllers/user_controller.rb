class UserController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :authenticate_v1_user!

  def show
    render json: { user: current_v1_user}
  end

  def name
    @user = User.find_by(id: current_v1_user.id)
    if @user.update(name_params)
      render json: {status: 'ok'}
    else
      render json: {status: 'no'}
    end
  end

  def name_params
    params.require(:user).permit(:name)
  end
end
