# frozen_string_literal: true
require 'pg'
class Bookmark
  def self.all
      con = PG.connect :dbname => 'bookmark_manager', :user=> 'aracho'

      rs = con.exec "SELECT * FROM bookmarks"
      rs.map{ |bookmark| bookmark['url']}
  end

  def self.add
    con = PG.connect :dbname => 'bookmark_manager', :user=> 'aracho'

    rs = con.exec "INSERT INTO bookmarks(url) VALUES('amazon.co.uk')"
end
end
