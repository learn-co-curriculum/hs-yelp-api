require 'yelp'

class YelpSearch
  attr_accessor :results

  def initialize
    Yelp.client.configure do |config|
      config.consumer_key = <your yelp_consumer_key>
      config.consumer_secret = <your yelp_consumer_secret>
      config.token = <your yelp_token>
      config.token_secret = <your yelp_token_secret>
    end
  end

  def search(location, search_term)
    Yelp.client.search(location, { term: search_term })
  end
end

searcher = YelpSearch.new
response = searcher.search('Financial District, New York, NY', 'food')
puts response.businesses.first.name
puts response.businesses.first.rating
puts response.businesses.first.rating_img_url
puts response.businesses.first.rating_img_url_small
puts response.businesses.first.url
puts response.businesses.first.image_url
puts response.businesses.first.display_phone
puts response.businesses.first.location.display_address
