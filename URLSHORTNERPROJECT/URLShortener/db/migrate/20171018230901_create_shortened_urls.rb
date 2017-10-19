class CreateShortenedUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :shortened_urls do |t|
      t.string :shorturl, null: false
      t.string :longurl, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
