require 'spec_helper'

describe "feeds/new" do
  before(:each) do
    assign(:feed, stub_model(Feed,
      :title => "MyString",
      :url => "MyString",
      :categories => "MyString",
      :summary => "MyText"
    ).as_new_record)
  end

  it "renders new feed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feeds_path, "feed" do
      assert_select "input#feed_title[name=?]", "feed[title]"
      assert_select "input#feed_url[name=?]", "feed[url]"
      assert_select "input#feed_categories[name=?]", "feed[categories]"
      assert_select "textarea#feed_summary[name=?]", "feed[summary]"
    end
  end
end
