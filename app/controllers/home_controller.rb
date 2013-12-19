class HomeController < ApplicationController
  def index
  	@symptoms = Symptom.all
  	@diseases = Disease.all
  end

  def diagnose
    # p(A)= n(A)/n
    
    # Di mana:
    # A     : Gejala per penyakit
    # P(A)  : Peluang gejala per penyakit
    # n     : Total banyaknya gejala per penyakit
    # n(A)  : Banyaknya hasil mendapatkan A

  	@results = ""
    ids = (params[:ids]).split(",").map(&:to_i)

    fact_temp = Rule.where(symptom_id: ids).group(:disease_id).count #{:disease_id => :symptom_id, :disease_id => :symptom_id}
    rule_temp = Rule.where(disease_id: fact_temp.keys).group(:disease_id).count #{:disease_id => :symptom_id, :disease_id => :symptom_id}
    disease_results = Disease.select(:id, :code, :name, :info, :handling).where(id: rule_temp.keys).to_a



    # symptoms_on_fact = Disease.where(:symptom_id, ids).includes(:symptoms).map {|d| [d.id, d.name, d.symptoms.size]}
    # diseases_results = Disease.select(:id, :code, :name, :info, :handling).where(id: rule_temp.keys)
    

    fact_temp.keys.each do |c|
      fact = rule = val = 0
      fact_temp.each {|k,v| fact = v if k==c}
      rule_temp.each {|k,v| rule = v if k==c}
      val = ((fact.to_f/rule.to_f)*100).round(2)
      
      disease_results.each do |n|
        if n.id == c
          @results += "#{n.code} #{n.name} -- Peluang: #{val}%," 
          disease_results.delete(n)
        end
      end
    end

    # diseases = Disease.where(:symptom_id, ids).includes(:symptoms).map {|d| [d.id, d.name, d.symptoms.size]}

    # diseases.each do |r|
    #   @results += "#{r[1]} #{r[2]},"
    # end

  	respond_to do |format|
  		format.html { redirect_to home_index_url }
  		format.js 
  	end
  end
end
