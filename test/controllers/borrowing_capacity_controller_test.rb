
require 'test_helper'

class BorrowingCapacityControllerTest < ActionDispatch::IntegrationTest
  test "should create model" do
    assert_difference('BorrowingCapacityCalculation.count') do
      post borrowing_capacity_index_path, params: { args: { annual_pretax_income: 50000, number_of_applicants: 2, number_of_dependents_under_18: 1, number_of_dependents_over_18: 0, loan_type: 'home', annual_total_expenses: 20000 } }
    end

    assert_response :created
  end

  test "should not create model with invalid params" do
    assert_no_difference('BorrowingCapacityCalculation.count') do
      post borrowing_capacity_index_path, params: { args: { annual_pretax_income: nil, number_of_applicants: nil, number_of_dependents_under_18: nil, number_of_dependents_over_18: nil, loan_type: nil, annual_total_expenses: nil } }
    end

    assert_response :unprocessable_entity
  end
end