require 'rails_helper'

RSpec.describe "Favourites", type: :request do
  describe "GET /update" do
    it "returns http success" do
      get "/favourites/update"
      expect(response).to have_http_status(:success)
    end
  end

end
