class CreateSentences < ActiveRecord::Migration[6.1]
  def change
    create_table :sentences do |t|
      t.string :text
      t.references :next, null: false, foreign_key: true
      t.belongs_to :lang, null: false, foreign_key: true

      t.timestamps
    end
    add_index :sentences, :text, unique: true
  end
end
