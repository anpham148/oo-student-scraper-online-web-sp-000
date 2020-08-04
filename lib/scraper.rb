require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)

    cards = doc.css(".student-card")

    cards.each do |info|
      name = info.css(".student-name")[0].children.text
      location = info.css(".student-location")[0].children.text
      profile = info.css("a href")
      binding.pry
    end

  end

  def self.scrape_profile_page(profile_url)

  end

end
