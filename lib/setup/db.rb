require 'sequel'
require_relative '../utils.rb'

if File.exists?('db/projects.db')
  puts "Database already exists"
else
  db = File.open("db/projects.db", 'w')
  db.close

  DB = Sequel.connect('sqlite://db/projects.db')
  DB.create_table :projects do
    primary_key :id
    String :name
  end

  print_ok "Database created"
end
