class HelloController < ApplicationController
  def index
    @users = User.all
    render json:{ status: 'Hello',users: @users}
  end
end
