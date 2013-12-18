class HomeController < ApplicationController
  def index
  	@symptoms = Symptom.all
  	@diseases = Disease.all
  end

  def diagnose
	ids = params[:ids]

  @results = "jhjasjkansja, lasnlans, aljsnajksnjasn"

	respond_to do |format|
		format.html { redirect_to home_index_url }
		format.js 
	end
  end
end
