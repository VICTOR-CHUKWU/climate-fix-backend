class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1
  # GET /users/1.json
  def show; end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
  end
end
