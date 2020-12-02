# frozen_string_literal: true

RSpec.describe 'GET /quotes/:id', type: :request do
  describe 'with "random" as query parameters' do
    before do
      get '/quotes/random'
    end

    it 'is expected to return a quote' do
      expected_response_body = {
        "date": 'October 2016',
        "source": 'https://twitter.com/realDonaldTrump/status/787699930718695425',
        "quote_of_the_day": 'The election is absolutely being rigged by the dishonest and distorted media pushing Crooked Hillary - but also at many polling places - SAD'
      }.as_json
      
      binding.pry
      

      expect(JSON.parse(response.body)).to eq expected_response_body
    end
  end
end
