require 'rails_helper'

RSpec.describe "CodeSchools", type: :request do
  describe "GET /code_schools" do
    it "works! (now write some real specs)" do
      get code_schools_path
      expect(response).to have_http_status(200)
    end
  end
end
