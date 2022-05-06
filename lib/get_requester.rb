# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  # URL =  "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"


  def initialize(url)
    @url = URI.parse(url)
  end


  def get_response_body
    response = Net::HTTP.get_response(@url)
    response.body
  end

  def parse_json
    JSON.parse(get_response_body)
  end


end

