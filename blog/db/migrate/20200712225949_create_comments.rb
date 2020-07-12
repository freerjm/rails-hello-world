class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments, id: :string do |t|
      t.text :text
      t.integer :likes
      t.string :article_id

      t.timestamps
    end
    add_index :comments, :article_id
    add_foreign_key :comments, :articles
  end
end
