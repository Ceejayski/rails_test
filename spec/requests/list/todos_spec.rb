require 'rails_helper'

RSpec.describe "List::Todos", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/list/todos/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/list/todos/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
