require 'net/http'
require 'json'
require 'date'
require 'pry'

city = ARGV[0]
date = Date.parse(ARGV[1])

query = URI("https://api.seatgeek.com/2/events?venue.city=#{city}")

predata = JSON.parse(Net::HTTP.get(query))


data = predata["events"].select do |datum|
  DateTime.parse(datum["datetime_local"]).to_date == date
end

data.each do |datum|
  # binding.pry
  puts "#{datum["title"]} @ #{datum["venue"]["name"]}"
end
