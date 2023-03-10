class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :rating_id
      t.integer :rater_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
