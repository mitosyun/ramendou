class AddStoreToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :store, :string
  end
end
