feature 'adding bookmark' do
  scenario 'have add bookmark button' do
    visit '/bookmarks'
    expect(page).to have_button 'Add Bookmark'
  end

  scenario 'add bookmark via form' do
    visit '/bookmarks'
    click_button "Add Bookmark"
    expect(page).to have_field "bookmark_name"
    expect(page).to have_button "Add"
  end
end
