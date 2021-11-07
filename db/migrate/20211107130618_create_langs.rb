class CreateLangs < ActiveRecord::Migration[6.1]
  def change
    create_table :langs do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
    add_index :langs, :code, unique: true
    add_index :langs, :name, unique: true
  end
end
