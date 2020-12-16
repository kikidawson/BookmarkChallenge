require 'bookmark'

describe Bookmark do
    it 'creates an instance of itself' do
        expect(subject).to be_kind_of Bookmark
    end

    it 'returns a list of bookmarks' do
        expect(Bookmark.all).to include ['Makers', "http://www.makersacademy.com"]
        expect(Bookmark.all).to include ['Destroy All Software', "http://www.destroyallsoftware.com"]
        expect(Bookmark.all).to include ['Google', "http://www.google.com"]
    end

    it 'adds a bookmark' do
        Bookmark.add('Unit', 'unit.com')
        expect(Bookmark.all).to include ['Unit', 'unit.com']
    end

    it 'deletes a bookmark' do
        Bookmark.delete('Makers')
        expect(Bookmark.all).not_to include ['Makers', "http://www.makersacademy.com"]
    end
end
