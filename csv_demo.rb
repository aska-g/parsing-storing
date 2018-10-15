require 'csv'

# TODO - let's read/write data from beers.csv
filepath    = 'data/beers.csv'


# PARSING

# Version 1
# i = 0
# CSV.foreach(filepath) do |row|  # => row is an array
#   if i > 0
#     puts "#{row[0]} is a #{row[1]}  beer coming from #{row[2]}"
#   end
#   i += 1
# end


csv_options = { headers: :first_row }

CSV.foreach(filepath, csv_options) do |row|  # row is a CSV::Row
  puts "#{row['Name']} is a #{row['Appearance']}  beer coming from #{row['Origin']}"
end


# STORING

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'data/beers2.csv'

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Asahi', 'Pale Lager', 'Japan']
  csv << ['Guinness', 'Stout', 'Ireland']
  csv << ['Heineken', 'Pils', 'Holland']
end















































