class CreateGenres < ActiveRecord::Migration[8.0]
  def change
    create_table :genres, id: false do |t|
      t.primary_key :genre_id
      t.string :genre_name

      t.timestamps
    end
  end
end
