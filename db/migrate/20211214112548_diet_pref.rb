class DietPref < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :diet_pref, :text, array: true, default: []
    add_column :users, :favourites, :text, array: true, default: []
  end
end
