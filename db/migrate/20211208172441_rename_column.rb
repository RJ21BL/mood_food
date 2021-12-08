class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :foods, :cooking_instruction, :cooking_instructions
    rename_column :foods, :ingridents, :ingredients
  end
end
