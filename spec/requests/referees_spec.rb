require 'rails_helper'

RSpec.describe "Referees", type: :request do
  describe "GET /referees" do
    it "works! (now write some real specs)" do
      get referees_path
      expect(response).to have_http_status(200)
    end
  end
end
