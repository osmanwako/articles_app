class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :Post, null: false, foreign_key: true
      t.text :message

      t.timestamps
    end
  end
end
