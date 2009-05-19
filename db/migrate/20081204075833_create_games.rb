class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :platform_id, :genre_id, :company_id
      t.string :description, :unique_id, :esrb, :cero, :pegi
    end
    add_index :games, [:platform_id, :genre_id, :company_id]
  end

  def self.down
    drop_table :games
  end
end
