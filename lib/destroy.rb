##
# Destroy.rb
# Alex LaFroscia

require_relative 'utils.rb'

print_prompt "\nAre you sure you want to delete everything? (y/N) "
input = $stdin.gets.chomp
if input.downcase.slice(0) == 'y'

  puts "\n"

  # Delete project database file
  if File.exists?("../db/projects.db")
    FileUtils.rm("db/projects.db")
    print_ok "Database deleted!"
  else
    print_ok "Database doesn't exist"
  end

  puts "\n"


  # Delete gittack user
  puts "Deleting gittack user. Please input your sudo password if prompted."
  system("sudo userdel gittack > /dev/null 2>&1")

  if $?.exitstatus == 0
    print_ok "gittack user removed successfully"
  else
    print_err "There was a problem removing the gittack user."
    print_err "It probably just doesn't exist"
  end

  puts "\n"


  # Remove gittack project directory
  print_prompt "Do you want to remove the gittack project directory?"
  input = $stdin.gets.chomp

  if input.downcase.slice(0) == 'y'
    system("rm -rf /gittack > /dev/null 2>&1")
    if $?.exitstatus == 0
      print_ok "gittack directory removed successfully"
    else
      print_err "There was a problem removing the gittack directory"
    end
  else
    print_ok "Skipping removal of the project directory. If you change your"
    print_ok "mind, just run the script again"
  end

else
  print_ok "You're safe!"
end
