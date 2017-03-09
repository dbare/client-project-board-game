class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :value
      t.integer :user_id, foreign_key: true
      t.references :voteable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
