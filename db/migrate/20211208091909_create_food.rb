class CreateFood < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :dietary_pref
      t.text :cooking_time

      t.timestamps
    end
  end
end
