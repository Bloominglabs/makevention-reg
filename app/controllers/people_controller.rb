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
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
    @person = Person.find(params.permit(:id))
  end
end

private
def createperson_params
  params.require(:person).permit! #(:firstName, :lastName, :selfNotes, user: [:username, :password, :password_confirmation])
end