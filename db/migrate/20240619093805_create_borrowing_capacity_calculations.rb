class CreateBorrowingCapacityCalculations < ActiveRecord::Migration[7.1]
  def change
    create_table :borrowing_capacity_calculations do |t|
      t.decimal :annual_pretax_income
      t.integer :number_of_applicants
      t.integer :number_of_dependents_under_18
      t.integer :number_of_dependents_over_18
      t.string :loan_type
      t.decimal :annual_total_expenses

      t.timestamps
    end
  end
end
