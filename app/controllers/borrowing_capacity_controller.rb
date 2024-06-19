class BorrowingCapacityController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]

    def create
        @model = BorrowingCapacityCalculation.new(model_params)
      
        if @model.save
          borrowing_capacity = calculate_borrowing_capacity(@model)
          render json: { model: @model, borrowing_capacity: borrowing_capacity }, status: :created
        else
          render json: @model.errors, status: :unprocessable_entity
        end
    end

    private

    def calculate_borrowing_capacity(model)
        # This is a rudimentary formula and may not reflect actual lending practices
        income_factor = model.annual_pretax_income * 5
        expense_factor = model.annual_total_expenses * 2
        dependent_factor = (model.number_of_dependents_under_18 + model.number_of_dependents_over_18) * 10000
        income_factor - expense_factor - dependent_factor
    end
      
    private
      
    def model_params
        params.require(:args).permit(:annual_pretax_income, :number_of_applicants, :number_of_dependents_under_18, :number_of_dependents_over_18, :loan_type, :annual_total_expenses)
    end
end
