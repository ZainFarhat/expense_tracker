class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :AccountName
      t.integer :AccountNumber
      t.string :AccountType
      t.decimal :AccountBalance

      t.timestamps
    end
  end
end
