json.extract! transaction, :id, :TransactionAccount, :TransactionType, :TransactionAmount, :TransactionDate, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
