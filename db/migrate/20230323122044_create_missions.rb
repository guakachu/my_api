class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.integer :price
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
