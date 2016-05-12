class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.references :user, index: true, foreign_key: true
      t.string :image
      t.text :summary

      t.timestamps null: false
    end
  end
end
