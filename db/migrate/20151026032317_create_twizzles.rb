class CreateTwizzles < ActiveRecord::Migration

  def up
    create_table :twizzles do |t|
      # t.references :user, index: true, foreign_key: true
      t.integer :user_id      
      t.string :content
      t.timestamps null: false
    end
    add_index :twizzles, :user_id, :name => 'user_id_index'
  end

  def down
    drop_table :twizzles
  end

end
