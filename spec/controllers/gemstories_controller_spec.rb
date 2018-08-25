require 'rails_helper'

RSpec.describe GemstoriesController, type: :controller do

  describe "GET #index" do
    before do
      Gemstory.create(title: 'Hello World')
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end
end
