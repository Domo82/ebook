class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.text :description
      t.boolean :availability, default: true
      t.integer :price

      t.timestamps
    end
  end
end
