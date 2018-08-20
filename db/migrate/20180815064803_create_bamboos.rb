class CreateBamboos < ActiveRecord::Migration[5.2]
  def change
    create_table :bamboos do |t|
      t.string :title
      t.text :content
      t.string :post_id

      t.timestamps
    end
    add_index :bamboos, :post_id, unique: true
  end
end
