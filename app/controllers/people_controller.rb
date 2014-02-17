class PeopleController < ApplicationController
  def update
    @person = Person.find_by_id(params[:id])
    if @person.update_attributes(edit_person_params)
      flash[:success] = "Your account information has been updated."
      redirect_to @person
    else
      render 'edit'
    end
  end

  def edit
    @person = Person.find_by_id(params[:id])
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
def edit_person_params
  params.require(:person).permit(:id, :first_name, :last_name, :self_notes, :birthdate, :emergency_contact, user_attributes: [:id], contact_info_attributes: [:id, :email, :phone, :website, :address_street_1, :address_street_2, :address_city, :address_state, :address_zip ])
end