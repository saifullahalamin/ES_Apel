class Rule < ActiveRecord::Base
	belongs_to :disease
	belongs_to :symptom
end
