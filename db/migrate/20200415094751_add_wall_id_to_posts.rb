class AddWallIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :wall_id, :int8
  end
end
