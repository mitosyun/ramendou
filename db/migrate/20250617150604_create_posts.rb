class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|

      t.integer :member_id
      t.integer :store_id
      t.string :title
      t.string :star
      t.text :body
      t.timestamps
    end
  end
end
