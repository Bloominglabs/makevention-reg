class Organization < ActiveRecord::Base
  has_many :people
  belongs_to :contact_info
end
