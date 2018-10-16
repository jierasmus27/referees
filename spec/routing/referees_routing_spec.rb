require "rails_helper"

RSpec.describe RefereesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/referees").to route_to("referees#index")
    end

    it "routes to #show" do
      expect(:get => "/referees/1").to route_to("referees#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/referees").to route_to("referees#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/referees/1").to route_to("referees#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/referees/1").to route_to("referees#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/referees/1").to route_to("referees#destroy", :id => "1")
    end
  end
end
