class CreateJobComments < ActiveRecord::Migration[5.2]
  def change
    create_table :job_comments do |t|
      t.string :commenter
      t.text :body
      t.references :jobpost, foreign_key: true

      t.timestamps
    end
  end
end
