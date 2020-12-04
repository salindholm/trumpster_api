class Api::QuotesController < ApplicationController
  API_URL = "https://api.tronalddump.io".freeze

  def show
    if params[:id] == "random"
      url = "#{API_URL}/random/quote"
      result = RestClient.get(url)
    end
    quote = JSON.parse(result.body)
    render json: format_json_response(quote)
  end

  def index
    url = "#{API_URL}/search/quote"
    result = RestClient.get(url, params: { query: params["query"] })
    binding.pry
  end

  private

  def format_json_response(obj)
    {
      date: DateTime.parse(obj["appeared_at"]).strftime("%B %Y"),
      source: obj["_embedded"]["source"][0]["url"],
      random_quote: obj["value"],
    }
  end
end
