require 'spec_helper'

describe "feeds/index" do
  before(:each) do
    assign(:feeds, [
      stub_model(Feed,
        :title => "Title",
        :url => "Url",
        :categories => "Categories",
        :summary => "MyText"
      ),
      stub_model(Feed,
        :title => "Title",
        :url => "Url",
        :categories => "Categories",
        :summary => "MyText"
      )
    ])
  end

  it "renders a list of feeds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Categories".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
