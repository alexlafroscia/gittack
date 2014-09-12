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
  ruby "lib/destroy.rb"
end

task default: %w[install]
