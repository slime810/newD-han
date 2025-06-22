class CreateUserMasters < ActiveRecord::Migration[8.0]
  def change
    create_table :user_masters do |t|
      t.integer :user_id
      t.string :user_name
      t.string :email

      t.timestamps
    end
  end
end
