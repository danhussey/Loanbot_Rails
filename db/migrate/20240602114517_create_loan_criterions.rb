class CreateLoanCriterions < ActiveRecord::Migration[7.1]
  def change
    create_table :loan_criterions do |t|
      t.decimal :max_dti_ratio
      t.decimal :min_deposit_percentage
      t.decimal :max_loan_amount
      t.integer :max_loan_term
      t.decimal :min_interest_rate

      t.timestamps
    end
  end
end
