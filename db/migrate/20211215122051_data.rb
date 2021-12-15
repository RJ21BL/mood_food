class Data < ActiveRecord::Migration[6.1]
  def change
    remove_column :foods, :cooking_instructions
    add_column :foods, :cooking_instructions, :json, default: {}
  end
end
