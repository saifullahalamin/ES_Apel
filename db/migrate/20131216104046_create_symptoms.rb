class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :code
      t.text :symptom

      t.timestamps
    end
  end
end
