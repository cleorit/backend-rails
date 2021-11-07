class CreateLangs < ActiveRecord::Migration[6.1]
  def change
    create_table :langs do |t|
      t.string :code, null: false
      t.string :name, null: false

      t.timestamps
    end
    add_index :langs, :code, unique: true
    add_index :langs, :name, unique: true
  end
end
