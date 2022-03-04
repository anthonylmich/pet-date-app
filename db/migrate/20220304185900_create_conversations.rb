class CreateConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :conversations do |t|
      t.integer :recipient
      t.integer :sender

      t.timestamps
    end
  end
end
