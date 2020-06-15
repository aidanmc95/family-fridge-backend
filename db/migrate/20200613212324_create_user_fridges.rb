class CreateUserFridges < ActiveRecord::Migration[6.0]
  def change
    create_table :user_fridges do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :fridge, null: false, foreign_key: true
      t.boolean :creator

      t.timestamps
    end
  end
end
