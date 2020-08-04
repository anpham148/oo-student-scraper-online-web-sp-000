require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)

    scrapping = []
    cards = doc.css(".student-card")



    cards.each do |info|
      s = {
        :name => info.css(".student-name")[0].children.text,
        :location => info.css(".student-location")[0].children.text,
        :profile_url => info.css("a")[0].attributes["href"].value
      }
       scrapping << s
    end
     scrapping
  end

  def self.scrape_profile_page(profile_url)
     html = open(profile_url)
     doc = Nokogiri::HTML(html)

    social_info = doc.css(".social-icon-container a")
    vital_info = doc.css(".vitals-container")
    detail_info = doc.css(".details-container")

    profile = {}

    social_info.each do |social|
      # a = social.attributes["class"]
      # binding.pry

      social_site = social.attributes["href"].value

      if social_site.include?("twitter")
        profile[:twitter] = social_site
      elsif social_site.include?("linkedin")
        profile[:linkedin] = social_site
      elsif social_site.include?("github")
        profile[:github] = social_site
      elsif social_site.include?("youtube")
        profile[:youtube] = social_site
      else
        profile[:blog] = social_site
      end
    end
    profile
  binding.pry
  end

end
