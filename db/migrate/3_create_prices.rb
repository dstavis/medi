class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :price
      t.belongs_to :procedure # t.integer :procedure_id
      t.belongs_to :hospital # t.integer :hospital_id
    end
  end
end