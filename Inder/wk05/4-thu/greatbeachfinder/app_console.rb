# pry session with your data models loaded

require 'pry'
require_relative 'db_config'
require_relative 'models/beaches'
require_relative 'models/ratings'

binding.pry