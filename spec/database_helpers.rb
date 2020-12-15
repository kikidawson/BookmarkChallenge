def wipe_clean
    connection = PG.connect :dbname => 'bookmark_manager_test'

    result = connection.exec "DROP TABLE bookmarks"
    result = connection.exec "CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60))"
    result = connection.exec "INSERT INTO bookmarks(url) VALUES('http://www.makersacademy.com')"
    result = connection.exec "INSERT INTO bookmarks(url) VALUES('http://www.destroyallsoftware.com')"
    result = connection.exec "INSERT INTO bookmarks(url) VALUES('http://www.google.com')"
end
