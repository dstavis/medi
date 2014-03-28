class Hospital < ActiveRecord::Base
  has_many :procedures, through: :prices
end