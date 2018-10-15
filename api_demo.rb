require 'json'
require 'open-uri'

# TODO
# ask user for an artist
# ask user for song title
# display lyrics

puts "Choose your artist"
print '> '
artist = gets.chomp.split.join('-')

puts "Choose your song"
print '> '
song = gets.chomp.split.join('-')


url = "https://api.lyrics.ovh/v1/#{artist}/#{song}"

string = open(url).read
hash = JSON.parse(string)

puts hash['lyrics']
















