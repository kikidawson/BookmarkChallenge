feature 'creating bookmark' do
  scenario 'have add bookmark button' do
    visit '/bookmarks'
    expect(page).to have_button 'Add Bookmark'
  end

  scenario 'create bookmark via form' do
    visit '/bookmarks'
    click_button 'Add Bookmark'
    expect(page).to have_field 'title'
    expect(page).to have_field 'url'
    expect(page).to have_button 'Add'
  end
end
