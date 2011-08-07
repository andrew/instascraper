require 'spec_helper'

describe Instascraper do
  it 'should download all your bookmarks' do
    i = Instascraper.new('andrewnez+instascraper@gmail.com', 'test')
    bookmarks = i.bookmarks
    bookmarks.class.should eql(Array)
    bookmarks.first.class.should eql(Instascraper::Bookmark)
    
    bookmarks.first.title.should match /Teabass.com/
    bookmarks.first.link.should match /http:\/\/teabass.com/
    bookmarks.first.text.should match /http:\/\/www.instapaper.com\/text\?u=http%3A%2F%2Fteabass.com&article=193664503/
  end
end