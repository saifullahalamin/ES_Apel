class Disease < ActiveRecord::Base
	has_many :rules
	has_many :symptoms, :through => :rules
end
