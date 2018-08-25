require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "GET #index" do
    before do
      Article.create(title: 'Hello World')
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end
end
