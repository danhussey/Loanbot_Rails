class CallMetadatum < ApplicationRecord
  belongs_to :customer, optional: true
  belongs_to :borrowing_capacity_calculation
  validates :call_id, presence: true


  before_create :associate_customer

  private

  def associate_customer
    self.customer = Customer.find_by(phone: from_number.gsub(' ', ''))
    if self.customer
      Rails.logger.info { "Customer ID #{self.customer.id} has been associated with CallMetadatum ID #{self.id}" }
    else
      Rails.logger.warn { "No customer found to associate with CallMetadatum ID #{self.id}" }
    end
  end
end