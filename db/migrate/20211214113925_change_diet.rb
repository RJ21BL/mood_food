class ChangeDiet < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :diet_pref, :text
  end
end
