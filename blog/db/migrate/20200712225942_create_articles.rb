class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles, id: :string do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
