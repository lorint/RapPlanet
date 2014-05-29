require "spec_helper"

describe RapperSongsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rapper_songs").to route_to("rapper_songs#index")
    end

    it "routes to #new" do
      expect(:get => "/rapper_songs/new").to route_to("rapper_songs#new")
    end

    it "routes to #show" do
      expect(:get => "/rapper_songs/1").to route_to("rapper_songs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rapper_songs/1/edit").to route_to("rapper_songs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rapper_songs").to route_to("rapper_songs#create")
    end

    it "routes to #update" do
      expect(:put => "/rapper_songs/1").to route_to("rapper_songs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rapper_songs/1").to route_to("rapper_songs#destroy", :id => "1")
    end

  end
end
