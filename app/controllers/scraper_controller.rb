class ScraperController < ApplicationController
  require "selenium-webdriver"
  require 'open-uri'
  def index
    link = 'https://skatemap.de/?id='
    #3811 aufgehört
    4000.times.with_index do |index|
      browser = Watir::Browser.new(:chrome)
      link_tmp = link + index.to_s
      browser.goto link_tmp
      if browser.div(:class => 'text_desc').exists?
        lat = browser.input(:name, 'lat').value
        lng = browser.input(:name, 'lng').value
        title = browser.title
        desc = browser.div(:class => 'text_desc').text
        category = browser.div(:class => 'text_kat').text
        image_src = Array.new
        8.times.with_index do |index|
          if browser.div(:class => 'bild', :index => index).exists?
            image_src << browser.div(:class => 'bild', :index => index).image.src
          else
            break
          end
        end
        scraper = Scraper.create(title: title, desc: desc, category: category,
                                 lat: lat, lng: lng, images: image_src)
        scraper.save
      end
      browser.close
    end
  end
end
