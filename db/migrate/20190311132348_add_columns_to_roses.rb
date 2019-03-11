class AddColumnsToRoses < ActiveRecord::Migration[5.2]
  def change
    add_column :roses, :getter, :string
    add_column :roses, :existingNumber, :string

  end
end
