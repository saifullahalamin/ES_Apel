class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.string :code
      t.string :name
      t.text :info
      t.text :handling

      t.timestamps
    end
  end
end
