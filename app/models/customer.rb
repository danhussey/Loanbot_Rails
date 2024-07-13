class Customer < ApplicationRecord
    has_many :borrowing_capacity_calculations
    has_many :call_metadata
    has_many :conversations
    def full_name
        "#{first_name} #{last_name}"
    end
end
