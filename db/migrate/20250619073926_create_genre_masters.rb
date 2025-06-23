class CreateGenreMasters < ActiveRecord::Migration[8.0]
  def change
    create_table :genre_masters do |t|
      t.integer :genre_id
      t.string :genre_name

      t.timestamps
    end
  end
end
