class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.integer :species
      t.integer :age
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.references :sitter, foreign_key: { to_table: :pet_sitters }

      t.timestamps
    end
  end
end
