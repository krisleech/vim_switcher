#! /usr/bin/ruby

root = File.expand_path(File.dirname(__FILE__))
puts "Switching to #{ARGV[0]}"

target = File.join(root, ARGV[0])
source = File.expand_path('~/.vim')

if File.exists? target
  unless File.symlink? target
    system("rm #{source}") if File.exists? source
    if system("ln -s #{target} #{source}")
      puts 'Done'
    else
      puts 'Failed'
    end
  else
    puts "#{source} is not a symlink"
  end
else
  puts "No install at #{target}"
end
