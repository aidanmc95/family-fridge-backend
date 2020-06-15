class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :fridge, null: false, foreign_key: true
      t.string :image_type
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
