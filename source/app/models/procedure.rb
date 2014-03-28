class Procedure < ActiveRecord::Base
  has_many :hospitals, through: :prices

  def hospitals_by_cheapest


  end
end