ActiveAdmin.register Rule do
  permit_params :disease_id, :symptom_id

  index do
    column 'Penyakit', :disease_id
    column 'Penyakit', :disease
    column 'Gejala', :symptom_id
    column 'Gejala', :symptom 
    actions
  end

  
  filter :disease_id, as: :select, label: "id penyakit"
  filter :disease, label: "list penyakit"
  # filter :disease, as: :text, label: "penyakit"
  filter :symptom_id, as: :select, label: "id gejala"
  filter :symptom, label: "list gejala"
  # filter :symptom, as: :string, label: "gejala"

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
