<<<<<<< HEAD:app/controllers/quotes_controller.rb
class QuotesController < ApplicationController
  API_URL = "https://api.tronalddump.io"
=======
class Api::QuotesController < ApplicationController
  API_URL = 'https://api.tronalddump.io'.freeze
>>>>>>> c31a4dc7d6f665b065eefc2db6fc706530debba0:app/controllers/api/quotes_controller.rb

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
<<<<<<< HEAD:app/controllers/quotes_controller.rb
      date: DateTime.parse(obj["appeared_at"]).strftime("%B %Y"),
      source: obj["_embedded"]["source"][0]["url"],
      quote_of_the_day: obj["value"],
=======
      date: DateTime.parse(obj['appeared_at']).strftime('%B %Y'),
      source: obj['_embedded']['source'][0]['url'],
      random_quote: obj['value']
>>>>>>> c31a4dc7d6f665b065eefc2db6fc706530debba0:app/controllers/api/quotes_controller.rb
    }
  end
end
 