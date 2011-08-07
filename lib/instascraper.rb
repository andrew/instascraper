require "instascraper/version"
require "instascraper/bookmark"
require 'mechanize'

class Instascraper
  def initialize(username, password = '')
    @agent = Mechanize.new { |agent| agent.user_agent_alias = 'Mac Safari' }

    @agent.get('http://www.instapaper.com/user/login/') do |page|
      form = page.form
      form.texts.first.value = username
      form.password = password
      form.submit
    end
  end
  
  def bookmarks(folder = nil)
    if folder
      home = @agent.get('http://www.instapaper.com/u/')
      path = home.link_with(:text => folder).href
    else
      path = '/u'
    end
    
    bookmarks = []
    more_pages = true
    current_page = nil
    
    while more_pages do
      page = @agent.get("http://www.instapaper.com#{path}/#{current_page}")

      page.parser.css('.tableViewCell').each do |bookmark|
        bookmark.css('.tableViewCellTitleLink').first['href']
        
        bookmarks << Bookmark.new(bookmark.css('.tableViewCellTitleLink').first['href'], 
                                  bookmark.css('.tableViewCellTitleLink').first.text,
                                  'http://www.instapaper.com'+bookmark.css('.textButton').first['href'])  
      end

      if page.link_with :text => /Older items/
        current_page = (current_page ? current_page + 1 : 1 )
      else
        more_pages = false
      end
    end

    return bookmarks
  end
end
