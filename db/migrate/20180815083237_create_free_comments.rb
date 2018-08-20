class CreateFreeComments < ActiveRecord::Migration[5.2]
  def change
    create_table :free_comments do |t|
      t.string :commenter
      t.text :body
      t.references :freepost, foreign_key: true

      t.timestamps
    end
  end
end
