class Instascraper
  class Bookmark
    attr_reader :link
    attr_reader :title
    attr_reader :text
    
    def initialize(link, title, text)
      @link = link
      @title = title
      @text = text
    end
  end
end