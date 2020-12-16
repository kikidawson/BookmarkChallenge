feature "deleting bookmarks" do
  scenario "user can delete a bookmark" do
    visit('/bookmarks')
    expect(page).to have_button('delete')
  end
end