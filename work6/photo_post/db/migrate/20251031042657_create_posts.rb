class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, limit: 20, null: false
      t.text :content, limit: 200, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
