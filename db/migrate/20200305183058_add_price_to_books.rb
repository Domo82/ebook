class AddPriceToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :price, :double
  end
end
