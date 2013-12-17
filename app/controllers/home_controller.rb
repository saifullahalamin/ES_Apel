class HomeController < ApplicationController
  def index
  	@symptoms = Symptom.all
  	@diseases = Disease.all
  end
end
