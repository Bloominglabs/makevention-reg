class Event < ActiveRecord::Base
  has_many :event_registrations
  has_many :organizations, through: :event_registrations
end
