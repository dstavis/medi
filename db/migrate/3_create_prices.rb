class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :price
      t.belongs_to :procedure_id # t.integer :procedure_id
      t.belongs_to :hospital_id # t.integer :hospital_id
    end
  end
end