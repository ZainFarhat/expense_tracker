class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :DateofBirth, null: false
      t.string :SocialSecurityNumber, null: false
      t.decimal :TotalIncome
      t.decimal :TotalExpenditure

      t.timestamps
    end
  end
end
