require 'net/http'
require 'json'
require 'date'
require "pry"

city = ARGV[0]
date = Date.parse(ARGV[1])
date_ceiling = date + 1

uri = URI("https://api.seatgeek.com/2/events")
params = {
  "venue.city" => city,
   "datetime_local.gte" => date.to_s,
    "datetime_local.lte" => date_ceiling.to_s
  }

uri.query = URI.encode_www_form(params)
binding.pry

predata = JSON.parse(Net::HTTP.get(uri))

data = predata["events"]

data.each do |datum|
  puts "#{datum["title"]} @ #{datum["venue"]["name"]}"
end
