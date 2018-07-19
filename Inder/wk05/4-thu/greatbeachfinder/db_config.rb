require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'greatbeachfinder'
}

ActiveRecord::Base.establish_connection(options)
