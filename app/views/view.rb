class View

 def self.welcome
  puts  "Hello welcome to the Medi app!\n
          Please tell us what procedure you want to get
          and we will tell you the best hospital to have it done by price."
 end

 def self.get_input
  $stdin.gets.chomp
 end

 def self.display_price(index, args)
  puts "#{index}. $#{args[:price]} at #{args[:hospital]} (#{args[:procedure]})"
 end

 def self.clear
  print "\e[2J"
 end

 def self.offer_map
  puts "Would you like a google map to the most affordable hospital?"
  $stdin.gets.chomp
 end

end