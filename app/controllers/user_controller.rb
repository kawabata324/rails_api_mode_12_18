class UserController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken

  def show
    @uid = request.headers[:uid]
    @user = User.find_by(uid: @uid)
    render json: { user: @user}
  end
end
