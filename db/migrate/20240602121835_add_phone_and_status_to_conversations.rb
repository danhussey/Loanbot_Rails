class AddPhoneAndStatusToConversations < ActiveRecord::Migration[7.1]
  def change
    add_column :conversations, :phone, :string
    add_column :conversations, :status, :string
  end
end
