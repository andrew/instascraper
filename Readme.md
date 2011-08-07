# Instascraper

This library provides a basic api to instapaper bookmarks for free by scraping the page

n.b. this is a work in progress, you probably shouldn't use it.

    gem install instascraper
    
    require 'instascraper'
    
    i = Instascraper.new('username', 'password')
    
    # load unread bookmarks
    bookmarks = i.bookmarks
    
    bookmarks.each do |b|
      puts b.link
      puts b.title
    end
    
    # folder support
    folder_bookmarks = i.bookmarks('folder name')
    
## Development

Source hosted at [GitHub](http://github.com/andrew/instascraper).
Report Issues/Feature requests on [GitHub Issues](http://github.com/andrew/instascraper/issues).

### Note on Patches/Pull Requests

 * Fork the project.
 * Make your feature addition or bug fix.
 * Add tests for it. This is important so I don't break it in a
   future version unintentionally.
 * Commit, do not mess with rakefile, version, or history.
   (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
 * Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2011 Andrew Nesbitt. See [LICENSE](https://github.com/andrew/instascraper/blob/master/LICENSE) for details.