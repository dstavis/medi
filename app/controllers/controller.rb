require_relative '../views/view.rb'

class Controller
  attr_accessor :procedure

  def self.get_procedure
    @procedure = (View.welcome)
  end

end

Controller.get_procedure