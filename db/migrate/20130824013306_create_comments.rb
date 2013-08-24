class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :user
      t.references :two

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :two_id
  end
end
