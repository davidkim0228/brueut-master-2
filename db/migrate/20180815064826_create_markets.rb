class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.string :title
      t.text :content
      t.string :post_id

      t.timestamps
    end
    add_index :markets, :post_id, unique: false
  end
end
