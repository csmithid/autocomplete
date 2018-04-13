require 'json'
require 'open-uri'
#require './methods.rb'

system "cls" or system "clear"
puts "What would you like to autocomplete?"
input = gets.gsub(" ","+").downcase.strip

download = open("http://suggestqueries.google.com/complete/search?q=#{input}&client=firefox").read

result = JSON.parse(download)

puts [result[1][1],result[1][2],result[1][3]]
