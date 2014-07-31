require 'spec_helper'

describe "feeds/edit" do
  before(:each) do
    @feed = assign(:feed, stub_model(Feed,
      :title => "MyString",
      :url => "MyString",
      :categories => "MyString",
      :summary => "MyText"
    ))
  end

  it "renders the edit feed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feed_path(@feed), "feed" do
      assert_select "input#feed_title[name=?]", "feed[title]"
      assert_select "input#feed_url[name=?]", "feed[url]"
      assert_select "input#feed_categories[name=?]", "feed[categories]"
      assert_select "textarea#feed_summary[name=?]", "feed[summary]"
    end
  end
end
