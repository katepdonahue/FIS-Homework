require 'open-uri'
require 'nokogiri'

class Scraper
  attr_reader :html

  def initialize url
    download = open(url)
    @html = Nokogiri::HTML(download)
  end

  def get_litwick_name
    html.search("title").text.split(" ")[0]
  end

end

# my_scraper = Scraper.new("http://bulbapedia.bulbagarden.net/wiki/Litwick")
# puts my_scraper.get_litwick_name