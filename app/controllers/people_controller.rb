class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create

    @person = Person.new(createperson_params)
    @person.build_user(params[:user])
    if @person.save
      sign_in @person.user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @person
    else
      render 'new'
    end
  end

  def update
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  def destroy
  end

  def index
  end

  def show
    @person = Person.find(params[:id])
  end
end

private
def createperson_params
  params.require(:person).permit! #(:first_name, :last_name, :self_notes, user: [:username, :password, :password_confirmation])
end