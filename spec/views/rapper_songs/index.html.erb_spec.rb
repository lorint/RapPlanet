require 'spec_helper'

describe "rapper_songs/index", :type => :view do
  before(:each) do
    assign(:rapper_songs, [
      RapperSong.create!(
        :rapper => "Rapper",
        :song => "Song"
      ),
      RapperSong.create!(
        :rapper => "Rapper",
        :song => "Song"
      )
    ])
  end

  it "renders a list of rapper_songs" do
    render
    assert_select "tr>td", :text => "Rapper".to_s, :count => 2
    assert_select "tr>td", :text => "Song".to_s, :count => 2
  end
end
