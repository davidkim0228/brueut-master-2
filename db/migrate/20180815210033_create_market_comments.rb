class CreateMarketComments < ActiveRecord::Migration[5.2]
  def change
    create_table :market_comments do |t|
      t.string :commenter
      t.text :body
      t.references :market, foreign_key: true

      t.timestamps
    end
  end
end
