class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :title
      t.string :status
      t.string :visibility

      t.timestamps
    end
  end
end
