class DeleteFav < ActiveRecord::Migration[6.1]
  def change
    drop_table :favourites
  end
end