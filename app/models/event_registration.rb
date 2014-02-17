class EventRegistration < ActiveRecord::Base
  has_many :exhibit_spaces
  has_many :exhibit_resources
end
