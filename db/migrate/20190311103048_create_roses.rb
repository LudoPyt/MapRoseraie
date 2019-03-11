class CreateRoses < ActiveRecord::Migration[5.2]
  def change
    create_table :roses do |t|
      t.string :name
      t.text :description
      t.float :longitude
      t.float :latitude
      t.string :family
      t.integer :creationDate

      t.timestamps
    end
  end
end
