class OrganizationsController < ApplicationController
  before_action :signed_in_user

  def new
    @organization = Organization.new
  end

  def create
    @person = current_user.person
    @organization.org_people.build


    @organization = Organization.new(createorganization_params)

    if (Organization.exists?(:username => @organization.name)) #pre-check
      if (@organization.errors == nil)
        @organization.errors = ActiveModel::Errors.new(@organization)
      end
      @organization.errors.add(:username, "The organization name you've chosen is already in use.  Please choose a different organization name.")
    end

    begin
      if @organization.save
        redirect_to edit_organization_url(@organization) 
      else
        render 'new'
      end
    rescue ActiveRecord::RecordNotUnique #insurance
      if (@user.errors == nil)
        @user.errors = ActiveModel::Errors.new(@user)
      end
      @user.errors.add(:username, "The username you've chosen is already in use.  Please choose a different username.")
      render 'new'
    end
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def index
    @organizations = Organizations.all
  end
end

private
def createorganization_params
  params.require(:organization).permit(:id, :name, contact_info_attributes: [:id, :email, :phone, :website, :address_street_1, :address_street_2, :address_city, :address_state, :address_zip ])
end