class Person < ActiveRecord::Base
  has_one :user, autosave: true
  belongs_to :contact_info, autosave: true
  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :contact_info
end
