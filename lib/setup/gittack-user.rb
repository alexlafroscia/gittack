##
# gittack-user.rb
# Alex LaFroscia

require_relative '../utils.rb'

system("cut -d: -f1 /etc/passwd | grep gittack > /dev/null 2>&1")

if $?.exitstatus == 0
  print_ok "The gittack user already exists!"
else
  print_msg "Adding gittack user..."
  system("
    sudo adduser \
      --system \
      --shell /usr/bin/git-shell \
      --home /gittack \
      gittack
  ")
end



