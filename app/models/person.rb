class Person < ActiveRecord::Base
  has_one :user, autosave: true
  has_one :contact_info, dependent: :destroy
  accepts_nested_attributes_for :user

end
