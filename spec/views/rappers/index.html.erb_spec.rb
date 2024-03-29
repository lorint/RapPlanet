require 'spec_helper'

describe "rappers/index", :type => :view do
  before(:each) do
    assign(:rappers, [
      Rapper.create!(
        :name => "Name",
        :age => 1
      ),
      Rapper.create!(
        :name => "Name",
        :age => 1
      )
    ])
  end

  it "renders a list of rappers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
