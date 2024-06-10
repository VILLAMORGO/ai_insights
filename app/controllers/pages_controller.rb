class PagesController < ApplicationController
  def home
    client = ApiClient.new
    @responses = client.fetch_responses
  end
end
