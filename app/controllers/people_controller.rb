class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    @person = Person.new(createperson_params)
    if @person.save
      #sign_in @person
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
    #@person = Person.find(params.permit(:id))
  end
end

private
def createperson_params
  params.permit(:firstName, :lastName, :selfNotes)
end