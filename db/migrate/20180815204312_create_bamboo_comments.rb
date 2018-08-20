class CreateBambooComments < ActiveRecord::Migration[5.2]
  def change
    create_table :bamboo_comments do |t|
      t.string :commenter
      t.text :body
      t.references :bamboo, foreign_key: true

      t.timestamps
    end
  end
end
