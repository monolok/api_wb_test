class CreateWorldBanks < ActiveRecord::Migration
  def change
    create_table :world_banks do |t|

      t.timestamps null: false
    end
  end
end
