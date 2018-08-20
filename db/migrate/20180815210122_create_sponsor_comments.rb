class CreateSponsorComments < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsor_comments do |t|
      t.string :commenter
      t.text :body
      t.references :sponsorpost, foreign_key: true

      t.timestamps
    end
  end
end
