class QuotesController < ApplicationController
  API_URL = "https://api.tronalddump.io"

  def show
    if params[:id] == "random"
      url = "#{API_URL}/random/quote"
      result = RestClient.get(url)
    end
    quote = JSON.parse(result.body)
    render json: format_json_response(quote)
  end
  private

  def format_json_response(obj)
    {
      date: DateTime.parse(obj["appeared_at"]).strftime("%B %Y"),
      source: obj["_embedded"]["source"][0]["url"],
      quote_of_the_day: obj["value"],
    }
  end
end
 