class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      
      t.integer :category_id, foreign_key: true

      t.timestamps
    end
  end
end
