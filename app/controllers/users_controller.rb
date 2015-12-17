class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @iser = User.new(paramas[:user])
    if @user.sabe

      #Handle a succellful save.

    else

      render 'new'

    end
 end
end
