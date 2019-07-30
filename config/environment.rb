require "sinatra/activerecord"
require "pry"
require "require_all"
require "colorize"

require_all "./Models"


ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/Trees/db')
