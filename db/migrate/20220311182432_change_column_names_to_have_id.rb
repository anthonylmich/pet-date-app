class ChangeColumnNamesToHaveId < ActiveRecord::Migration[7.0]
  def change
    rename_column :conversations, :recipient, :recipient_id
    rename_column :conversations, :sender, :sender_id
  end
end
