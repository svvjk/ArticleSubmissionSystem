class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :Articleno, null: false
      t.string :Regno
      t.text :abstract
      t.string :Articletype
      t.string :Language
      t.text :article
      t.string :Status
      t.references :reg, foreign_key: true

      t.timestamps
    end
	add_index :articles, :Articleno, unique: true
  end
end
