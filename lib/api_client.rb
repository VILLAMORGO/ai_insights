require 'faraday'
require 'json'

class ApiClient
  BASE_URL = Rails.application.credentials.sports_insights_api

  def initialize
    @conn = Faraday.new(url: BASE_URL) do |faraday|
      faraday.request  :url_encoded
      faraday.response :logger
      faraday.adapter  Faraday.default_adapter
    end
  end

  def fetch_responses
    response = @conn.get('responses')
    if response.success?
      JSON.parse(response.body)
    else
      puts "Error: #{response.status}"
      []
    end
  end
end