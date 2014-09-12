require 'colorize'

def print_ok(message)
  puts "---> #{message}".colorize(:green)
end

module OS
  def OS.windows?
   (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
  end

  def OS.mac?
    (/darwin/ =~ RUBY_PLATFORM) != nil
  end

  def OS.unix?
   !OS.windows?
  end

  def OS.linux?
    OS.unix? and not OS.mac?
  end
end

