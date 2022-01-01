class ChangeDateofBirthDtype < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :DateofBirth, :datetime
  end
end
