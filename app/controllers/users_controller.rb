class UsersController < ApplicationController
  before_action :signed_in_user,
                only: [:index, :edit, :update, :destroy, :following, :followers]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def new
    @person = Person.new
    @user = User.new
    @user.person = @person
  end

  def create
    ##p createuser_params
    ##p params[:user]
    ##p params[:user][:person_attributes]
    #@newperson_params = params[:user][:person_attributes]
    #p @newperson_params
    @user = User.new(createuser_params)
    #p @user
    #@person = Person.new(@newperson_params)
    #p @person
    #@user.build_person
    #@user.person = @person #Person.create(params[:user][:person_attributes])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Makevention!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

end

private
def createuser_params
  params.require(:user).permit(:username, :password, :password_confirmation, person_attributes: [:firstName])
end