class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :price
      t.integer :procedure_id
      t.integer :hospital_id
    end
  end
end