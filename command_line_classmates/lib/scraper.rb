# require the libraries we need
require 'open-uri'
require 'nokogiri'

class Scraper
  attr_reader :html

  def initialize url
    download = open(url)
    @html = Nokogiri::HTML(download)
  end

  def get_students_names
    html.search("h3").text.split(/(?<=[a-z.])(?=[A-Z])/)
  end

  def get_twitter
    twitter = []
    html.search(".back").each do |back_plate|
      if back_plate.search(".twitter").text.split[0].nil?
        twitter << "none"
      else
        twitter << back_plate.search(".twitter").text.split[0]
      end
    end
    twitter
  end

  def get_blog
    blog_url = []
    html.search(".back").each do |back_plate|
      if back_plate.search(".blog").text == "Blog"
        blog_url << back_plate.search(".blog")[0]["href"]
      else
        blog_url << "none"
      end
    end
    blog_url
  end

end

