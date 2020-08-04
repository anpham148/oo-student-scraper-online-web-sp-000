require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)

    scrapping = []
    cards = doc.css(".student-card")
    name = info.css(".student-name")[0].children.text,
    location = info.css(".student-location")[0].children.text,
    profile_url = info.css("a href")

    cards.each do |info|

      # scrapping << s
    end
  #  scrapping
  end

  def self.scrape_profile_page(profile_url)
    #  html = open(profile_url)
    #  doc = Nokorgiri::HTML(html)

  end

end
