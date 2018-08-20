class CreateJobposts < ActiveRecord::Migration[5.2]
  def change
    create_table :jobposts do |t|
      t.string :title
      t.text :content
      t.string :post_id

      t.timestamps
    end
    add_index :jobposts, :post_id, unique: false
  end
end
