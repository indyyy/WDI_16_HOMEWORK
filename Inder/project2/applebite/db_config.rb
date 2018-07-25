require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'applebite'
}

ActiveRecord::Base.establish_connection(options)
