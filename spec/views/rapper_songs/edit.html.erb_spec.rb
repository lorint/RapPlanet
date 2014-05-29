require 'spec_helper'

describe "rapper_songs/edit", :type => :view do
  before(:each) do
    @rapper_song = assign(:rapper_song, RapperSong.create!(
      :rapper => "MyString",
      :song => "MyString"
    ))
  end

  it "renders the edit rapper_song form" do
    render

    assert_select "form[action=?][method=?]", rapper_song_path(@rapper_song), "post" do

      assert_select "input#rapper_song_rapper[name=?]", "rapper_song[rapper]"

      assert_select "input#rapper_song_song[name=?]", "rapper_song[song]"
    end
  end
end
