class Instascraper
  class Bookmark
    attr_reader :link
    attr_reader :title
    
    def initialize(link, title)
      @link = link
      @title = title
    end
  end
end