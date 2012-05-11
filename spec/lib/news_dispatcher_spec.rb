require 'spec_helper'

describe NewsDispatcher do

  context "get list of news" do
    before do
      response = double('request', :body_str => news)
      Curl::Easy.should_receive(:perform).with('http://news.ycombinator.com/').and_return(response)
    end

    it "should return list of news as json object" do
      NewsDispatcher.get.should == [
        { :title => '10 reasons to start using Ruby', :link => 'http://blog.example.com/' },
        { :title => '9 reasons to start using C++', :link => 'http://new-blog.example.com/' }
      ]
    end
  end

  def news
    content = File.open('./spec/fixtures/news.html', 'r').read
  end
end
