feature "deleting bookmarks" do
  scenario "user can delete a bookmark" do
    Bookmark.create(title: 'Asos', url: 'http://www.asos.com')
    visit '/bookmarks'
    expect(page).to have_link('Asos', href: 'http://www.asos.com')
    expect(page).to have_button 'Delete'
  end
end
