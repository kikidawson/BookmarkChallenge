require 'bookmark'

describe Bookmark do

  it 'returns a list of bookmarks' do
    bookmark = Bookmark.create(title: 'Makers', url: "http://www.makersacademy.com")
    Bookmark.create(title: 'Destroy All Software', url: "http://www.destroyallsoftware.com")
    Bookmark.create(title: 'Google', url: "http://www.google.com")

    bookmarks = Bookmark.all

    expect(bookmarks.length).to eq 3
    expect(bookmarks.first).to be_kind_of Bookmark
    # expect(bookmarks.first.id).to eq bookmark.id
    expect(bookmarks.first.title).to eq "Makers"
    expect(bookmarks.first.url).to eq "http://www.makersacademy.com"
  end

  it 'adds a bookmark' do
    bookmark = Bookmark.create(title: 'Unit', url: 'http://www.unit.com').first

    expect(bookmark['title']).to eq 'Unit'
    expect(bookmark['url']).to eq 'http://www.unit.com'
  end

  it 'deletes a bookmark' do
    Bookmark.delete('Makers')
    expect(Bookmark.all).not_to include ['Makers', "http://www.makersacademy.com"]
  end
end
