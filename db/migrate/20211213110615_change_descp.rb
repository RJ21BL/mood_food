class ChangeDescp < ActiveRecord::Migration[6.1]
  def change
    change_column :foods, :description, :text
  end
end
