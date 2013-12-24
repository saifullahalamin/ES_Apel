class Disease < ActiveRecord::Base
	has_many :rules
	has_many :symptoms, :through => :rules

	after_create :generate_code

	def generate_code
		if (self.id.to_i / 100) > 1
			self.code = "P#{self.id}" 
		elsif (self.id.to_i / 10) > 1
			self.code = "P0#{self.id}"
		elsif (self.id.to_i / 1) > 1
			self.code = "P00#{self.id}"
		end
	    self.save
	end
end
