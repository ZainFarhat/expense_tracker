class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :TransactionAccount
      t.string :TransactionType
      t.decimal :TransactionAmount
      t.datetime :TransactionDate

      t.timestamps
    end
  end
end
