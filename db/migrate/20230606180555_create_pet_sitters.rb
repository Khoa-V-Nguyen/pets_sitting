class CreatePetSitters < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_sitters do |t|
      t.belongs_to :user
      t.integer :sitter_id

      t.timestamps
    end
  end
end
