require 'spec_helper'

describe Feed do
  it 'should not allow duplicates' do
    @feed2 = Feed.create(url:"http://www.philly.com/philly/news/20140727_D_A___Gunman
_was_offended_by_hospital_s__gun-free__policy.html")
    @feed2 = Feed.create(url:"http://www.philly.com/philly/news/20140727_D_A___Gunman
_was_offended_by_hospital_s__gun-free__policy.html")

    Feed.count.should == 1
  end
end
