require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'


# PARSING

string = File.read(filepath)

hash = JSON.parse(string)
beers = hash['beers']


beers.each do |beer|
  puts "#{beer['name']} is a #{beer['appearance']}  beer coming from #{beer['origin']}"
end


# STORING

require 'json'

beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  }
]}

File.open('data/beers2.json', 'wb') do |file|
  file.write(JSON.generate(beers))
end

























