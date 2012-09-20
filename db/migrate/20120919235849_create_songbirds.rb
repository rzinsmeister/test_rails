class CreateSongbirds < ActiveRecord::Migration
  def change
    create_table :songbirds do |t|
      t.string :title
      t.text :song

      t.timestamps
    end
  end
end
