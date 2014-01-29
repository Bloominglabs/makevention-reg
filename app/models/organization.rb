class Organization < ActiveRecord::Base
  has_many :people
  has_one :contact_info
end
