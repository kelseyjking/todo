class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :ingredient
      t.date :expiry_date
      t.string :image
      t.integer :related_recipes
      t.string :inventory

      t.timestamps
    end
  end
end
