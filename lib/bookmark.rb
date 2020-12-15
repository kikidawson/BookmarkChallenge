# frozen_string_literal: true
require 'pg'
class Bookmark
  def self.all
      connection = PG.connect :dbname => 'bookmark_manager'

      result = connection.exec "SELECT * FROM bookmarks;"
      result.map{ |bookmark| bookmark['url']}
  end

  def self.add(bookmark)
    connection = PG.connect :dbname => 'bookmark_manager'

    result = connection.exec "INSERT INTO bookmarks(url) VALUES('#{bookmark}')"
  end

end
