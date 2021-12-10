class Users < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :surname
      t.string :email
      t.string :password_digest
      t.string :gender
      t.date :dob
      t.timestamps
    end 
  end
end
