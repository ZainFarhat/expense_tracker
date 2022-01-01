class FixDateofBirth < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :Dateofbirth, :DateofBirth
  end
end
