class AddFirstNameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :FirstName, :string
  end
end
