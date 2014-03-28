class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :price
    end
  end
end