##
# Rakefile
# Alex LaFroscia
#

require 'sequel'

task :install do
  ruby "lib/setup/db.rb"
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
