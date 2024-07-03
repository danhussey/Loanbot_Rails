class CallMetadatum < ApplicationRecord
  belongs_to :borrowing_capacity_calculation
  validates :call_id, presence: true
end
