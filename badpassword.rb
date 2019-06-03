puts "Welcome to BadPassword"
pass = ARGV[0]
puts "Testing #{pass}"

File.open("1000-most-common-passwords.txt", "r").each_line do |line|
  if pass == line.gsub("\n", "")
    puts "Bad password detected: #{line}"
    exit
  end
end

puts "No bad password detected"