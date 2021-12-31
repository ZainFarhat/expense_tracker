class AddLastNameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :LastName, :string
  end
end
