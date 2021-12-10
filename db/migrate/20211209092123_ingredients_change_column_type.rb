class IngredientsChangeColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column(:foods, :ingredients, :text)
  end
end
