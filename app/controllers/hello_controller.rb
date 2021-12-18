class HelloController < ApplicationController
  def index
    render json:{ status: 'Hello'}
  end
end
