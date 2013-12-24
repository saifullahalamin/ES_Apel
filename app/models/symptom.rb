class Symptom < ActiveRecord::Base
	has_many :rules
	has_many :diseases, :through => :rules

	alias_attribute :name, :symptom
end
