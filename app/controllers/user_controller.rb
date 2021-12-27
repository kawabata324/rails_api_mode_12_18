class UserController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :authenticate_v1_user!

  def show
    render json: { user: current_v1_user}
  end
end
