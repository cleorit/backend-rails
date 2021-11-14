class AddParentToSentences < ActiveRecord::Migration[6.1]
  def change
    add_reference :sentences, :parent, null: true, foreign_key: { to_table: :sentences }
  end
end
