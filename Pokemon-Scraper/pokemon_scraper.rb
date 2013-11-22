require 'open_uri'
require 'nokugiri'

class Scraper
  attr_reader :html

  def initialize url
    download = open(url)
    @html = Nokogiri::HTML(download)
  end

  def get_litwick_name
  end

end