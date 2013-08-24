class CreateTwos < ActiveRecord::Migration
  def change
    create_table :twos do |t|
      t.string :title
      t.text :content
      t.references :user

      t.timestamps
    end
    add_index :twos, :user_id
  end
end
