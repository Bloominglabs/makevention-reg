class Person < ActiveRecord::Base
  has_one :user, autosave: true
  belongs_to :contact_info, autosave: true
  has_many :org_people
  has_many :organizations, through: :org_people

  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :contact_info

  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  
  # human_attribute_name(:first_name) => "First Name"
end
