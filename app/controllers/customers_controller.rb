class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @conversation = Conversation.find(params[:id])
  end

end
