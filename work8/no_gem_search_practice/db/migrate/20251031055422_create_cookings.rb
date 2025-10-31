class CreateCookings < ActiveRecord::Migration[8.1]
  def change
    create_table :cookings do |t|
      t.string :title
      t.text :content
      t.references :genre, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
