feature 'viewing bookmarks' do
  scenario 'shows bookmarks at /bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'Makers'
  end
end
