require 'spec_helper'

describe "RapperSongs", :type => :request do
  describe "GET /rapper_songs" do
    it "works! (now write some real specs)" do
      get rapper_songs_path
      expect(response.status).to be(200)
    end
  end
end
