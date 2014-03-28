class Procedure < ActiveRecord::Base
  has_many :prices
  has_many :hospitals, through: :prices

  def hospitals_by_cheapest


  end
end