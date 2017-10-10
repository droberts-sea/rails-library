class CreateGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :genres do |t|
      t.string :name

      t.timestamps
    end

    create_join_table :books, :genres
  end
end
