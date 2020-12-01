# frozen_string_literal: true

RSpec.describe "GET /quotes/:id", type: :request do
  describe 'with "random" as query parameters' do
    before do
      get "/quotes/random"
    end

    it "is expected to return a quote" do
      expected_response_body = {
        "date": "",
        "source": "",
        "quote_of_the_day": "",
      }

      expect(JSON.parse(response.body)).to eq expected_response_body
    end

    it "is expected to..." do
    end

    it "is expected to..." do
    end
  end
end
