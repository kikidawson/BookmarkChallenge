def wipe_clean
    connection = PG.connect :dbname => 'bookmark_manager_test'

    result = connection.exec "DROP TABLE bookmarks"
    result = connection.exec "CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, title VARCHAR(60), url VARCHAR(60))"
end
