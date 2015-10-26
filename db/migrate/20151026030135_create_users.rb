class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :fname
      t.string :lname
      t.string :headline

      t.timestamps null: false
    end
  end
end
