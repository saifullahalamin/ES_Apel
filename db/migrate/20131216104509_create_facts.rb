class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.integer :symptom_id
      t.integer :disease_id

      t.timestamps
    end
  end
end
