class AddCustomerIdToCallMetadata < ActiveRecord::Migration[7.1]
  def change
    add_column :call_metadata, :customer_id, :integer
  end
end
