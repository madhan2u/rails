require 'spec_helper'

describe "feeds/show" do
  before(:each) do
    @feed = assign(:feed, stub_model(Feed,
      :title => "Title",
      :url => "Url",
      :categories => "Categories",
      :summary => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Url/)
    rendered.should match(/Categories/)
    rendered.should match(/MyText/)
  end
end
