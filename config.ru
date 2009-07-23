require 'pp'
puts "ENV"
pp ENV

puts "Load path"
pp $:

pp "Loaded features"
pp $"

require 'rubygems'
puts "Gem path"
pp Gem.path

app = lambda do |env|
  [200, {"Content-Length" => "0", "Content-Type" => "text/plain"}, []]
end

run app
