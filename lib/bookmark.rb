# frozen_string_literal: true
require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end
      bookmarks = []
      result = connection.exec "SELECT * FROM bookmarks;"
      result.map{ |bookmark|
        bookmarks << [bookmark['title'], bookmark['url']]
      }
      bookmarks
  end

  def self.add(title, url)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end

    result = connection.exec "INSERT INTO bookmarks(title, url) VALUES('#{title}', '#{url}')"
  end

  def self.delete(title)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect :dbname => 'bookmark_manager_test'
    else
      connection = PG.connect :dbname => 'bookmark_manager'
    end

    result = connection.exec "DELETE FROM bookmarks WHERE title='#{title}'"
  end
end
