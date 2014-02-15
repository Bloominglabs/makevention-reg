class ContactInfo < ActiveRecord::Base
  attr_accessor :person
  attr_accessor :organization
  validates :email, presence: true, length: { maximum: 255 }
end
