class CreateGradComments < ActiveRecord::Migration[5.2]
  def change
    create_table :grad_comments do |t|
      t.string :commenter
      t.text :body
      t.references :graduate, foreign_key: true

      t.timestamps
    end
  end
end
