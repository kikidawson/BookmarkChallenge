feature 'viewing bookmarks' do
  scenario 'shows bookmarks at /bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'www.makersacademy.com'
  end
end
