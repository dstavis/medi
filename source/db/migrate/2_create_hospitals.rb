class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      # t.string :zipcode
    end
  end
end


HASH_ARRAY.each do |hash|
  Procedure.create!(hash.keys.map{|key| key = :name if key == :procedure})
  Hospital.create!(hash.keys.map{|key| key = :name if key == :hospital})
  Price.create!()
end