require "rails_helper"

RSpec.describe CodeSchoolsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/code_schools").to route_to("code_schools#index")
    end

    it "routes to #new" do
      expect(:get => "/code_schools/new").to route_to("code_schools#new")
    end

    it "routes to #show" do
      expect(:get => "/code_schools/1").to route_to("code_schools#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/code_schools/1/edit").to route_to("code_schools#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/code_schools").to route_to("code_schools#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/code_schools/1").to route_to("code_schools#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/code_schools/1").to route_to("code_schools#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/code_schools/1").to route_to("code_schools#destroy", :id => "1")
    end

  end
end
