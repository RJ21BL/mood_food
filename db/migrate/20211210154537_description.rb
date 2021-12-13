class Description < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :description, :text, array: true, default: []
  end
end
