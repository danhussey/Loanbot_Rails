require 'test_helper'

class BorrowingCapacityControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = Customer.create!(phone: "+12137771234", first_name: "John", last_name: "Doe")
  end

  test "should create borrowing_capacity_calculation and call model and associate customer" do
    assert_difference('BorrowingCapacityCalculation.count') do
      post borrowing_capacity_index_path, params: { 
        args: { 
          annual_pretax_income: 50000, 
          number_of_applicants: 2, 
          number_of_dependents_under_18: 1, 
          number_of_dependents_over_18: 0, 
          loan_type: 'home', 
          annual_total_expenses: 20000 
        },
        call: {
          call_id: "Jabr9TXYYJHfvl6Syypi88rdAHYHmcq6",
          from_number: "+12137771234",
          to_number: "+12137771235",
          direction: "inbound",
          call_type: "phone_call",
          call_status: "registered",
          agent_id: "oBeDLoLOeuAbiuaMFXRtDOLriTJ5tSxD",
          metadata: {},
          retell_llm_dynamic_variables: {
            customer_name: "John Doe"
          },
          opt_out_sensitive_data_storage: true
        }
      }
    end

    assert_response :created

    # Assert a call metadata was created
    assert_equal @customer.id, CallMetadatum.last.customer_id
  end

  test "should not create model with invalid params" do
    assert_no_difference('BorrowingCapacityCalculation.count') do
      post borrowing_capacity_index_path, params: { 
        args: { 
          annual_pretax_income: nil, 
          number_of_applicants: nil, 
          number_of_dependents_under_18: nil, 
          number_of_dependents_over_18: nil, 
          loan_type: nil, 
          annual_total_expenses: nil 
        },
        call: {
          call_id: nil,
          from_number: nil,
          to_number: nil,
          direction: nil,
          call_type: nil,
          call_status: nil,
          agent_id: nil,
          metadata: nil,
          retell_llm_dynamic_variables: nil,
          opt_out_sensitive_data_storage: nil
        }
      }
    end

    assert_response :unprocessable_entity
  end

  test "should return borrowing capacity" do
    post borrowing_capacity_index_path, params: { 
      args: { 
        annual_pretax_income: 60000, 
        number_of_applicants: 1, 
        number_of_dependents_under_18: 2, 
        number_of_dependents_over_18: 0, 
        loan_type: 'home', 
        annual_total_expenses: 15000 
      },
      call: {
        call_id: "Jabr9TXYYJHfvl6Syypi88rdAHYHmcq6",
        from_number: "+12137771234",
        to_number: "+12137771235",
        direction: "inbound",
        call_type: "phone_call",
        call_status: "registered",
        agent_id: "oBeDLoLOeuAbiuaMFXRtDOLriTJ5tSxD",
        metadata: {},
        retell_llm_dynamic_variables: {
          customer_name: "John Doe"
        },
        opt_out_sensitive_data_storage: true
      }
    }
    
    assert_response :created
    json_response = JSON.parse(response.body)
    assert_not_nil json_response['borrowing_capacity']
  end
end