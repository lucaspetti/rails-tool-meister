class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :name
      t.boolean :available
      t.text :description
      t.string :photo
      t.string :category
      t.string :location
      t.string :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
