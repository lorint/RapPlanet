class Song < ActiveRecord::Base
  has_many :rapper_songs

#	validates :title, format: { with: /(swag|[Mm]edium|MEDIUM)/ }

	# Custom validator
	# validate :within_one_of_two_ranges

	# def within_one_of_two_ranges
	# 	unless (self.duration <= 10 && self.duration > 0) ||
	# 		(self.duration <= 110 && self.duration > 99)
	# 		self.errors.add( :duration, "Duration has to be either 1-10 or 100-110")
	# 	end
	# end
end
