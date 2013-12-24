ActiveAdmin.register Disease do
  permit_params :name, :info, :handling

  index do
    column 'Kode', :code
    column 'Penyakit', :name
    actions
  end

  filter :name, :label => 'Penyakit'
  filter :symptoms_symptom, as: :string, :label => 'Gejala'

  form do |f|
    f.inputs "Detail Penyakit" do
      f.input :name
      f.input :info
      f.input :handling
      # f.input :symptoms, as: :check_boxes, collection: Symptom.all.map {|s| [s.symptom, s.id]}
    end
    f.actions
  end
  
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
