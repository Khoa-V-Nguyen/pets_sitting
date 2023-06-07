class CreatePetSitters < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_sitters do |t|
      t.string :sitter_name
      t.text :bio
      t.string :contact_info

      t.timestamps
    end
  end
end
