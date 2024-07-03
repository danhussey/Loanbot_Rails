class CreateCallMetadata < ActiveRecord::Migration[7.1]
  def change
    create_table :call_metadata do |t|
      t.string :call_id
      t.string :from_number
      t.string :to_number
      t.string :direction
      t.string :call_type
      t.string :call_status
      t.string :agent_id
      t.json :metadata
      t.json :retell_llm_dynamic_variables
      t.boolean :opt_out_sensitive_data_storage
      t.references :borrowing_capacity_calculation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
