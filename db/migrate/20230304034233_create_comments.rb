class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :comment_id
      t.integer :recipe_id
      t.string :message
      t.integer :author_id

      t.timestamps
    end
  end
end
