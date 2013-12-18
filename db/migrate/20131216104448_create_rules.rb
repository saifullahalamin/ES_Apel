class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.belongs_to :symptom
      t.belongs_to :disease

      t.timestamps
    end
  end
end
