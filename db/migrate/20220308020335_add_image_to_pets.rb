class AddImageToPets < ActiveRecord::Migration[7.0]
  #this had the wrong name due to me mixing up what I had to add.
  #this is supposed to be named "AddUseridToPets". but that's life I caught it before I migrated it because I double checked the migration file.
  def change
    add_column :pets, :user_id, :integer
  end
end
