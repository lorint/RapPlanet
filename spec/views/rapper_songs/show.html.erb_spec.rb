require 'spec_helper'

describe "rapper_songs/show", :type => :view do
  before(:each) do
    @rapper_song = assign(:rapper_song, RapperSong.create!(
      :rapper => "Rapper",
      :song => "Song"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rapper/)
    expect(rendered).to match(/Song/)
  end
end
