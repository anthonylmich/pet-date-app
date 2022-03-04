class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.string :location_city
      t.string :phone_number

      t.timestamps
    end
  end
end
