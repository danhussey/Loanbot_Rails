class BorrowingCapacityCalculation < ApplicationRecord
    validates :annual_pretax_income, :number_of_applicants, :number_of_dependents_under_18, :number_of_dependents_over_18, :loan_type, :annual_total_expenses, presence: true
  end