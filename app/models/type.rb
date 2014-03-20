class Type < ActiveRecord::Base
	has_many :items

	def self.drop_down
		self.pluck(:title, :id).sort { |t, t2| t[0] <=>  t2[0]}
	end
end


