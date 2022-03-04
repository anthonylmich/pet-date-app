class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :gender
      t.string :name
      t.text :description
      t.string :img_url
      t.string :likes
      t.string :dislikes
      t.boolean :fixed

      t.timestamps
    end
  end
end
