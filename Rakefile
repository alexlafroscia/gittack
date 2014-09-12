##
# Rakefile
# Alex LaFroscia
#

require 'sequel'
require_relative 'lib/utils'

task :install do
  if OS.linux?
    ruby "lib/setup/db.rb"
  else
    puts "You need to be on Linux for this to work right...".colorize(:red)
  end
end

task :destroy do
  puts "Are you sure you want to delete everything? (y/N) "
  input = $stdin.gets.chomp
  if input.downcase.slice(0) == 'y'
    FileUtils.rm("db/projects.db")
    puts "Database deleted!"
  else
    puts "You're safe!"
  end
end

task default: %w[install]
