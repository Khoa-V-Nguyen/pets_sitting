class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.integer :species
      t.integer :age
      t.references :user, null: false, foreign_key: true
      t.references :pet_sitter, foreign_key: true

      t.timestamps
    end
  end
end
