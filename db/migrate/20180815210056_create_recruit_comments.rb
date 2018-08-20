class CreateRecruitComments < ActiveRecord::Migration[5.2]
  def change
    create_table :recruit_comments do |t|
      t.string :commenter
      t.text :body
      t.references :recruit, foreign_key: true

      t.timestamps
    end
  end
end
