class Location < ActiveRecord::Base
	belongs_to :user
	geocode_by :address
	after_validation :geocode
end
