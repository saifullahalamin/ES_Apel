class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.belongs_to :symptom
      t.belongs_to :disease

      t.timestamps
    end
  end
end
