class Customer < ApplicationRecord
    has_many :borrowing_capacity_calculations
    has_many :call_metadata
end
