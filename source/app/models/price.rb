class Price < ActiveRecord::Base
  belongs_to :hospital
  belongs_to :procedure

end