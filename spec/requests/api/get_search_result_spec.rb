# frozen_string_literal: true

RSpec.describe "GET /api/quotes", type: :request do
  let(:headers) { { HTTP_ACCEPT: "application/json" } }

  describe 'with "barack" as a query parameter' do
    before do
      get "/api/quotes",
        params: {
          query: "barack",
        },
        headers: headers
    end
    it 'is expected to return a list of quotes that contains word "barack"' do
    end
  end
end
