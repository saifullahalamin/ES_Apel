class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.integer :symtom_id
      t.integer :disease_id

      t.timestamps
    end
  end
end
