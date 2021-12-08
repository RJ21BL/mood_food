class TableArray < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :cooking_instruction, :string, array: true, default: []
    add_column :foods, :ingridents, :string, array: true, default: []
    add_column :foods, :allergies, :string, array: true, default: []
  
  end
end
