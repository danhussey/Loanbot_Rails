# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Conversation.find_or_create_by!(name: "John Doe", loan_amount: 500000, income: 70000, phone: "+61 412 345 678", status: "pending")
Conversation.find_or_create_by!(name: "Jane Smith", loan_amount: 200000, income: 120000, phone: "+61 413 456 789", status: "approved")
Conversation.find_or_create_by!(name: "Bob Johnson", loan_amount: 150000, income: 180000, phone: "+61 414 567 890", status: "rejected")


Customer.find_or_create_by!(
  first_name: "Alice",
  last_name: "Williams",
  email: "alice.williams@example.com",
  phone: "+61 415 678 901",
  address: "123 Main St, Sydney, NSW 2000"
)

