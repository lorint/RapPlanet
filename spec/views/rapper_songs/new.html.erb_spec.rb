require 'spec_helper'

describe "rapper_songs/new", :type => :view do
  before(:each) do
    assign(:rapper_song, RapperSong.new(
      :rapper => "MyString",
      :song => "MyString"
    ))
  end

  it "renders new rapper_song form" do
    render

    assert_select "form[action=?][method=?]", rapper_songs_path, "post" do

      assert_select "input#rapper_song_rapper[name=?]", "rapper_song[rapper]"

      assert_select "input#rapper_song_song[name=?]", "rapper_song[song]"
    end
  end
end
