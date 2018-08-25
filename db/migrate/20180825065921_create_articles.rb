class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :summerize
      t.string :image
      t.string :link

      t.timestamps
    end
  end
end
