feature 'viewing bookmarks' do
  scenario 'welcomes user to the page' do
    visit('/bookmarks')
    expect(page).to have_content 'Here is a list of Bookmarks'
  end

  scenario 'views bookmarks that have been created' do
    Bookmark.create(title: 'Asos', url: 'http://www.asos.com')
    Bookmark.create(title: 'Github', url: 'http://www.github.com')

    visit '/bookmarks'

    expect(page).to have_link('Asos', href: 'http://www.asos.com')
    expect(page).to have_link('Github', href: 'http://www.github.com')
  end
end
