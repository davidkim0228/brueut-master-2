class CreateRecruits < ActiveRecord::Migration[5.2]
  def change
    create_table :recruits do |t|
      t.string :title
      t.text :content
      t.string :post_id

      t.timestamps
    end
    add_index :recruits, :post_id, unique: true
  end
end
