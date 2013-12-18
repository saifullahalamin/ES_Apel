class Fact < ActiveRecord::Base
	belongs_to :disease
	belongs_to :symptom
end
