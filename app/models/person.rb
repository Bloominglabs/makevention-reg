class Person < ActiveRecord::Base
  has_one :user
  has_one :contact_info, dependent: :destroy
  has_many :
end
