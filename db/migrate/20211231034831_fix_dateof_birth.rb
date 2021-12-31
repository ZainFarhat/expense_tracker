class FixDateofBirth < ActiveRecord::Migration[6.1]
  def change
    rename_column :User, :Dateofbirth, :DateofBirth
  end
end
