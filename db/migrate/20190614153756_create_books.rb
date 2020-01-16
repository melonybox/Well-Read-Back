class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :authors
      t.string :publisher
      t.string :publishedDate
      t.string :thumbnail_url
      t.text :description
      t.integer :pageCount
      t.float :averageRating
      t.integer :ratingsCount
      t.boolean :maturityRating

      t.timestamps
    end
  end
end
