require 'bookmark'

describe Bookmark do
    it 'creates an instance of itself' do
        expect(subject).to be_kind_of Bookmark
    end

    it 'returns a list of bookmarks' do
        expect(Bookmark.all).to include 'http://www.makersacademy.com'
    end

    it 'adds a bookmark' do
        Bookmark.add('unit.com')
        expect(Bookmark.all).to include 'unit.com'
    end

end