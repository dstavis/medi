require_relative '../views/view'
# require_relative '../models'


class Controller
  attr_accessor :procedure

  def self.start
    load_model
    View.welcome
    get_procedure
    list_by_lowest_price
    if View.offer_map
      hospital_url = @cheapest_hospital.name.gsub(/( )/, '+')
      exec `open "http://google.com/maps/search/#{hospital_url}"`
    end
  end

private
  def self.get_procedure
    @procedure = (View.get_input)
  end

  def self.load_model
    require_relative '../models/price'
    require_relative '../models/procedure'
    require_relative '../models/hospital'
  end

  def self.list_by_lowest_price
    #logic that produces a string of prices for the given procedure in order of cheapest, and the hospital at which they're offered
    procedure = Procedure.find_by("name like ?", "%#{@procedure}%")
    prices = Price.where(procedure_id: procedure.id).sort_by{|price| price.price}

    prices.each_with_index do |price, index|

     hospital = Hospital.find_by("id like ?", "#{price.hospital_id}")
     @cheapest_hospital = hospital if index == 0
     View.display_price(index + 1, procedure: procedure.name, price: price.price, hospital: hospital.name)
    end
  end
end