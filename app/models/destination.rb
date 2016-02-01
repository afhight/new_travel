class Destination < ActiveRecord::Base
	def address
		"#{city}, #{country}"
	end

	geocoded_by :address
  after_validation :geocode
end