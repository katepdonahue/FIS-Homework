require 'open-uri'
require 'nokogiri'

class Scraper
  attr_reader :html

  def initialize url
    download = open(url)
    @html = Nokogiri::HTML(download)
  end

  # def get_litwick_name
  #   html.search("title").text.split(" ")[0]
  # end

  def get_names
    name = []
    html.search("td a").map do |element|
      next if element["title"].nil?
      if element["title"].split[-1] == "(Pokémon)"
        name << element.text
      end
    end
    name
  end

end

my_scraper = Scraper.new("http://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_National_Pok%C3%A9dex_number")
puts my_scraper.get_names

