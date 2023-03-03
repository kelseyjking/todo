class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :rating
      t.time :time_to_make
      t.text :recipe_steps
      t.string :image
      t.integer :chef_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
