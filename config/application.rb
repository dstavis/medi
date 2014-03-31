require 'pathname'
require 'sqlite3'
require 'active_record'
require 'logger'
require '../app/controllers/controller.rb'
require '../app/views/view.rb'

APP_ROOT = Pathname.new(File.expand_path(File.join(File.dirname(__FILE__), '..')))

APP_NAME = APP_ROOT.basename.to_s

DB_PATH  = APP_ROOT.join('db', APP_NAME + ".db").to_s

# not sure what this does but it runs in the background
if ENV['DEBUG']
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

# Automatically load every file in APP_ROOT/app/models/*.rb, e.g.,
#   autoload "Person", 'app/models/person.rb'
#
# See http://www.rubyinside.com/ruby-techniques-revealed-autoload-1652.html

# is this the go between for our models & migrations
Dir[APP_ROOT.join('app', 'models', '*.rb')].each do |model_file|
  filename = File.basename(model_file).gsub('.rb', '')
  autoload ActiveSupport::Inflector.camelize(filename), model_file
end

# path to sql
ActiveRecord::Base.establish_connection :adapter  => 'sqlite3',
                                        :database => DB_PATH

Controller.get_procedure