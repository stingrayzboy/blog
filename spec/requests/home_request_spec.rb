require 'rails_helper'

RSpec.describe "Homes", type: :request do

  describe "GET /" do
    let!(:article_1) { create(:article) }
    let!(:article_2) { create(:article, title: "Another", description:"Another") }

    it "returns http success, we see all the articles" do
      get "/"
      expect(response).to have_http_status(:success)
      expect(response.body).to include(article_1.title)
      expect(response.body).to include(article_2.title)
      expect(response.body).to include(article_1.description)
      expect(response.body).to include(article_2.description)
    end
  end

end
