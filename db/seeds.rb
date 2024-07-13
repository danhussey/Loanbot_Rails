# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Conversation.find_or_create_by!(name: "John Doe", loan_amount: 500000, income: 70000, phone: "+61 412 345 678", status: "pending", 
  summary: "The user inquired about their borrowing capacity for a mortgage. The agent requested details about the user's income and existing debts. The user provided an annual income of $80,000 and a car loan with a remaining balance of $10,000. The agent calculated an estimated borrowing capacity of approximately $400,000, noting that the actual amount may vary based on factors like credit score and lender criteria. The user expressed gratitude, and the agent offered further assistance if needed.", 
  transcript:
  "User: Hi, I'm looking to find out my borrowing capacity for a mortgage.

  Agent: Hello! I'd be happy to help you with that. Can you please provide me with some details about your income and any existing debts?

  User: Sure, I have an annual income of $80,000 and I have a car loan with a remaining balance of $10,000.

  Agent: Thank you for the information. Do you have any other financial commitments or expenses that we should consider?

  User: No, that's all.

  Agent: Great. Based on your income and existing debt, I can provide an estimate of your borrowing capacity. Please hold on for a moment while I calculate that for you.

  [Agent calculates borrowing capacity]

  Agent: Based on the information provided, your estimated borrowing capacity is approximately $400,000. This is a rough estimate and the actual amount may vary depending on other factors such as your credit score and the specific lender's criteria.

  User: Thank you! That's very helpful.

  Agent: You're welcome! If you have any other questions or need further assistance, feel free to ask.

  User: That's all for now. Thanks again!

  Agent: Have a great day!",
  customer_id:1)

Conversation.find_or_create_by!(name: "Jane Smith", loan_amount: 200000, income: 120000, phone: "+61 413 456 789", status: "approved")
Conversation.find_or_create_by!(name: "Bob Johnson", loan_amount: 150000, income: 180000, phone: "+61 414 567 890", status: "rejected")


Customer.find_or_create_by!(
  first_name: "Alice",
  last_name: "Williams",
  email: "alice.williams@example.com",
  phone: "+61415678901",
  address: "123 Main St, Sydney, NSW 2000"
)

# TODO Seed a borrowing capacity calculation with a customer
