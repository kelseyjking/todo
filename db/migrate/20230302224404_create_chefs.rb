class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.string :chef_name
      t.text :bio
      t.string :image
      t.integer :related_recipes

      t.timestamps
    end
  end
end
