class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :title_english
      t.string :title_native
      t.text :description
      t.float :score
      t.date :aired_start
      t.date :aired_end
      t.date :premiered
      t.integer :episodes

      t.timestamps
    end
  end
end
