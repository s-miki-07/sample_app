require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /static_pages" do
    it "works! (StaticPages)" do
      get static_pages_index_path
      expect(response).to have_http_status(200)
    end
  end
end


