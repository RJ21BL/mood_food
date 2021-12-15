class ChangingCookingInstruct < ActiveRecord::Migration[6.1]
  def change
    rename_column :foods, :cooking_instruction, :cooking_instructions
  end
end
