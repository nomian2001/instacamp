class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :photo, null: false, foreign_key: true
      t.string :username
      t.string :body

      t.timestamps
    end
  end
end
