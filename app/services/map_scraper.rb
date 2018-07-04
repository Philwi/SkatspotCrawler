class MapScraper
  include Wombat::Crawler

#  base_url "https://skatemap.de"
#  path "/"
#  some_data css: "latest_eintrag"
  base_url "https://www.skatemap.de"
  path "/?id=2"

  spots do |s|
    s.skatespot_details "css=#skatepark_detail"
    s.skatespot_coords ""
  end
end
