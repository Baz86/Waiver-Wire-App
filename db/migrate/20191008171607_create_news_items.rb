class CreateNewsItems < ActiveRecord::Migration[5.1]
  def change
    create_table :news_items do |t|
      t.text :body
      t.integer :player_id
      t.timestamps
    end
  end
end
