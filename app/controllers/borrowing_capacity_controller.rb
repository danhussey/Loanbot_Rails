class BorrowingCapacityController < ApplicationController
    def create
        @model = BorrowingCapacityCalculation.new(model_params)
      
        if @model.save
          render json: @model, status: :created
        else
          render json: @model.errors, status: :unprocessable_entity
        end
    end
      
    private
      
    def model_params
        params.require(:model).permit(:annual_pretax_income, :number_of_applicants, :number_of_dependents_under_18, :number_of_dependents_over_18, :loan_type, :annual_total_expenses)
    end
end
