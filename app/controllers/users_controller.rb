class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(createuser_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Makevention!"
      redirect_to new_person_url
    else
      render 'new'
    end
  end

end

private
def createuser_params
  params.permit(:username, :password)
end