class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :username
      t.string :website
      t.text :bio
      t.string :profile_pic

      t.timestamps null: false
    end
  end
end
