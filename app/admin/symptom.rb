ActiveAdmin.register Symptom do
  permit_params :name, :info, :handling

  index do
    column 'Kode', :code
    column 'Gejala', :symptom
    actions
  end
  
  filter :symptom, :label => 'Gejala'
  filter :diseases, :label => 'Penyakit'
  
end
