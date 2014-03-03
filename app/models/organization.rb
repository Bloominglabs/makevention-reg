class Organization < ActiveRecord::Base
  belongs_to :contact_info
  
  accepts_nested_attributes_for :contact_info

  has_many :event_registrations
  has_many :org_people

  has_many :events, through: :event_registrations
  has_many :people, through: :org_people    
end
