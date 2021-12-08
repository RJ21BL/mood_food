class SampleNameChangeColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column(:foods, :cooking_instructions, :text)
  end
end
