class Hospital < ActiveRecord::Base
  has_many :prices
  has_many :procedures, through: :prices

  validates :name, presence: true

end

# @hospital.valid?

# @hospital.errors
# => <ActiveModel::Errors:0x007fc7e98a2a10 @base=#<Hospital id: nil, name: nil>, @messages={:name=>["can't be blank"]}>

# @hospital.errors.full_messages
# => ["NAME NOT VALID"]