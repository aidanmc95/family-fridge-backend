class CreateFridges < ActiveRecord::Migration[6.0]
  def change
    create_table :fridges do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
