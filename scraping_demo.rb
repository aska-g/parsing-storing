require 'open-uri'
require 'nokogiri'

title = 'titanic'
url = "https://www.imdb.com/find?ref_=nv_sr_fn&q=#{title}&s=tt"

html_file = open(url).read # => string
html_doc = Nokogiri::HTML(html_file)


html_doc.search('.result_text').take(10).each do |element|
  puts element.text.strip
end
