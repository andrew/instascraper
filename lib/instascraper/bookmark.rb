class Instascraper
  class Bookmark
    attr_reader :link
    attr_reader :title
    attr_reader :text
    attr_reader :agent
    attr_reader :delete_link

    def initialize(dom_element, agent)
      @link = dom_element.css('.tableViewCellTitleLink').first['href']
      @title = dom_element.css('.tableViewCellTitleLink').first.text,
      @text = 'http://www.instapaper.com' + dom_element.css('.textButton').first['href']
  
      @agent = agent
      @delete_link = dom_element.css('.deleteLink').first['href']
    end

    def html
      @html ||= @agent.get(@text).parser.css('#story')
    end

    def delete
      @agent.get(@delete_link)
    end
  end
end