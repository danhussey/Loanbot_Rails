class AddTranscriptToConversations < ActiveRecord::Migration[7.1]
  def change
    add_column :conversations, :transcript, :text
  end
end